import 'dart:async';
import 'dart:convert';

import 'package:cryptography/cryptography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_nearby_connections/flutter_nearby_connections.dart';
import 'package:get/get.dart';
import 'package:peer_chat/app/data/database/daos/user.dao.dart';
import 'package:peer_chat/app/data/entities/device_user.entity.dart';
import 'package:peer_chat/app/data/entities/message/data_message.dart';
import 'package:peer_chat/app/data/entities/message/message.entity.dart';
import 'package:peer_chat/app/data/entities/message/message_type.enum.dart';
import 'package:peer_chat/app/data/entities/message/start_message_data.dart';
import 'package:peer_chat/app/data/entities/user.entity.dart';
import 'package:peer_chat/app/data/entities/user_min.entity.dart';
import 'package:peer_chat/app/services/crypto.service.dart';
import 'package:peer_chat/app/services/key.service.dart';
import 'package:uuid/uuid.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final usersDao = UserDao();
  final count = 0.obs;
  final nearbyService = NearbyService();

  final devices = <DeviceUserEntity>[].obs;

  late StreamSubscription devicesSubscription;
  late StreamSubscription dataSubscription;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<User> initDB() async {
    return user.value = await usersDao.getUser();
  }

  late final user = Rxn<User>();

  init() async {
    final keyService = KeyService();

    /*print(
      keyService.getSharedKey(
          keyPair: base64Decode(user.value!.keyPairData!),
          remotePublicKey: SimplePublicKey(
            base64Decode(
              '0I6+yrJtgNB5c3H0LO7kRs8CVbdHHw6NGyQ4Ss443EU=',
            ),
            type: X25519().keyPairType,
          )),
    );*/
    await initDB();

    await nearbyService.init(
      serviceType: 'mpconn',
      deviceName: jsonEncode(
          user.value!.toUserMinEntity().toJson()) /*user.value!.fullName*/,
      strategy: Strategy.P2P_CLUSTER,
      callback: (isRunning) async {
        final encoded = jsonEncode(user.value!.toJson());
        print(jsonDecode(encoded));
      },
    );

    devicesSubscription =
        nearbyService.stateChangedSubscription(callback: (devicesList) {
      devices.clear();

      devices.addAll(
        devicesList.map(
          (e) => DeviceUserEntity(
            device: e,
            user: UserMinEntity.fromJson(
              jsonDecode(e.deviceName),
            ),
          ),
        ),
      );
    });

    dataSubscription =
        nearbyService.dataReceivedSubscription(callback: _messageReceived);
  }

  void _messageReceived(dynamic receivedData) async {
    print("DL| ECRYPTED DATA RECEIVED: " + receivedData['message']);

    final key = SecretKey(
      base64Decode('MvP7BmHa9RgWFhLpSnivuBCvrpQOxr60Vx/AVTReuBY='),
    );

    print("DL| KEY FOR DECRYPT DATA: " +
        'MvP7BmHa9RgWFhLpSnivuBCvrpQOxr60Vx/AVTReuBY=');

    try {
      final wrongKey = SecretKey([
        50,
        243,
        251,
        6,
        97,
        218,
        245,
        24,
        22,
        22,
        18,
        233,
        74,
        120,
        175,
        184,
        16,
        175,
        174,
        148,
        14,
        198,
        190,
        180,
        87,
        31,
        192,
        85,
        52,
        94,
        184,
        21
      ]);
      print("DL| KEY FOR DECRYPT DATA: " +
          base64Encode(await wrongKey.extractBytes()));
      final wrongDecryptedMessage =
          await CryptoService.base64Decrypt(wrongKey, receivedData['message']);
      print("DL| WRONG DECRYPTED DATA: " + wrongDecryptedMessage);
    } catch (e) {
      print("DL| ERROR: wrong parameters for decryption");
    }

    final decryptedMessage =
        await CryptoService.base64Decrypt(key, receivedData['message']);

    print("DL| DECRYPTED DATA: " + decryptedMessage);

    /* print("DL| DATA RECEIVED: " + receivedData['message']);
    final KeyService keyService = KeyService();
    final newKey = await keyService.generateNewKeyPairFromUserSeed(user.value!);

    final sharedKey = await keyService.getSharedKey(
      keyPair: newKey,
      remotePublicKey: SimplePublicKey(
        base64Decode(receivedData['message']),
        type: KeyPairType.x25519,
      ),
    );

    print('DL| SHARED KEY: ' + base64Encode(await sharedKey.extractBytes()));*/
    // print(receivedData);
    /*final data = receivedData as MessageEntity;
    switch (data.type) {
      case MessageType.startConnection:
        _sendPublicKeyToPeer(data.deviceId);
        break;
      case MessageType.receivePublicKey:
        _calculateSharedKey(data.startMessageData, data.deviceId);
        break;
      case MessageType.dataMessage:
        _handleDataMessage(data.dataMessage, data.deviceId);
        break;
      default:
        throw Exception('Unsupported message type');
    }*/

    /*Get.snackbar("New message", data['message']);
    print(data);*/
  }

  void _calculateSharedKey(StartMessageData? data, String? deviceId) {}

  void _sendPublicKeyToPeer(String? deviceId) {}

  void _handleDataMessage(DataMessage? data, String? deviceId) {}

  void startBrowsing() async {
    await nearbyService.stopBrowsingForPeers();
    nearbyService.startBrowsingForPeers();
  }

  void startAdvertising() async {
    await nearbyService.stopAdvertisingPeer();
    nearbyService.startAdvertisingPeer();
  }

  void connectToDevice(Device device) {
    nearbyService.invitePeer(
      deviceID: device.deviceId,
      deviceName: device.deviceName,
    );
  }

  void sendData(String deviceId, String message) async {
    final encryptedMessageConcatenation = await CryptoService.base64Encrypt(
      SecretKey(base64Decode('MvP7BmHa9RgWFhLpSnivuBCvrpQOxr60Vx/AVTReuBY=')),
      'Hello, Pavel',
    );

    print("DL| SEND ENCRYPTED DATA" + encryptedMessageConcatenation);

    /*final KeyService keyService = KeyService();
    final newKey = await keyService.generateNewKeyPairFromUserSeed(user.value!);
    final pkBytes = (await newKey.extractPublicKey()).bytes;
    print('DL| SEND DATA: ' + base64Encode(pkBytes));*/
    nearbyService.sendMessage(deviceId, encryptedMessageConcatenation);
    // nearbyService.sendMessage(deviceId, user.value!.publicKey!);
  }

  Future<void> _saveMessageToDatabase(
      String deviceId, String encryptedMessage) async {}

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> showUserBottomsheet(String id) async {
    Get.bottomSheet(
      ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: Text('Approve user'),
          ),
          ListTile(
            title: Text('Check user ID'),
            onTap: () => seeUserId(id),
          ),
        ],
      ),
      backgroundColor: Colors.white
    );
  }

  Future<void> seeUserId(String id) async {
    Get.defaultDialog(
      title: "Remote User id",
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SelectableText(id, style: const TextStyle(fontSize: 13)),
          ),
          IconButton(
            onPressed: () {
              Clipboard.setData(
                ClipboardData(text: id),
              );
            },
            icon: const Icon(Icons.content_copy),
          ),
        ],
      ),
    );
  }
}

/*void keys() async {
    final keyService = KeyService();

    // Alice chooses her key pair
    final aliceKeyPair = await keyService.generateNewKeyPairFromUserSeed(
      const User(
        username: 'alice',
        password: 'alicepassword',
      ),
    );
    final alicePublicKey = await aliceKeyPair.extractPublicKey();

    // Alice knows Bob's public key
    final bobKeyPair = await keyService.generateNewKeyPairFromUserSeed(
      const User(
        username: 'bob',
        password: 'bobpassword',
      ),
    );
    final bobPublicKey = await bobKeyPair.extractPublicKey();

    // Alice calculates the shared secret.
    final sharedAliceSecret = await keyService.getSharedKey(
      keyPair: aliceKeyPair,
      remotePublicKey: bobPublicKey,
    );

    // Bob calculates the shared secret.
    final sharedBobSecret = await keyService.getSharedKey(
      keyPair: bobKeyPair,
      remotePublicKey: alicePublicKey,
    );

    print("==== ALICE KEYS ====");
    final alicePrivateKeyBytes = await aliceKeyPair.extractPrivateKeyBytes();
    print("\tPRIVATE KEY");
    print("\t\t$alicePrivateKeyBytes");
    print("\t\t${base64Encode(alicePrivateKeyBytes)}");
    print("\tPUBLIC KEY");
    print("\t\t${alicePublicKey.bytes}");
    print("\t\t${base64Encode(alicePublicKey.bytes)}");
    print('\n');

    print("==== BOB KEYS ====");
    final bobPrivateKeyBytes = await bobKeyPair.extractPrivateKeyBytes();
    print("\tPRIVATE KEY");
    print("\t\t${bobPrivateKeyBytes}");
    print("\t\t${base64Encode(bobPrivateKeyBytes)}");
    print("\tPUBLIC KEY");
    print("\t\t${bobPublicKey.bytes}");
    print("\t\t${base64Encode(bobPublicKey.bytes)}");
    print('\n');

    print("==== SHARED KEYS ====");
    final aliceSharedKeyBytes = await sharedAliceSecret.extractBytes();
    final bobSharedKeyBytes = await sharedBobSecret.extractBytes();
    print("\tALICE SHARED KEY");
    print("\t\t$aliceSharedKeyBytes");
    print("\t\t${base64Encode(aliceSharedKeyBytes)}");
    print("\tBOB SHARED KEY");
    print("\t\t$bobSharedKeyBytes");
    print("\t\t${base64Encode(bobSharedKeyBytes)}");
    print(
        "==== IS KEYS EQUAL: ${const ListEquality().equals(aliceSharedKeyBytes, bobSharedKeyBytes)} ====");
    print('\n');

    final encrypted = await encrypt(sharedAliceSecret);

    decrypt(sharedBobSecret, encrypted);
  }

  Future<String> encrypt(SecretKey secretKey) async {
    final encrypted = await CryptoService.base64Encrypt(
      secretKey,
      '''hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello
      hellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohellohello''',
    );
    print(encrypted);
    return encrypted;
  }

  Future<void> decrypt(SecretKey secretKey, String box) async {
    final decrypted = await CryptoService.base64Decrypt(
      secretKey,
      box,
    );
  }*/
