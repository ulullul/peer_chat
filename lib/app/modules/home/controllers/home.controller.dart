import 'dart:async';

import 'package:flutter_nearby_connections/flutter_nearby_connections.dart';
import 'package:get/get.dart';
import 'package:peer_chat/app/data/database/daos/user.dao.dart';
import 'package:uuid/uuid.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final usersDao = UserDao();
  final count = 0.obs;
  final nearbyService = NearbyService();

  final devices = <Device>[].obs;

  late StreamSubscription devicesSubscription;
  late StreamSubscription dataSubscription;

  @override
  void onInit() {
    initDB();
    init();
    super.onInit();
  }

  void initDB() async {
    print(await usersDao.getUser());
  }

  init() async {
    await nearbyService.init(
        serviceType: 'mpconn',
        deviceName: const Uuid().v4(),
        strategy: Strategy.P2P_CLUSTER,
        callback: (isRunning) async {
          print('isRunning: $isRunning');
          /*if (isRunning) {
            if (widget.deviceType == DeviceType.browser) {

              await nearbyService.stopBrowsingForPeers();
              await Future.delayed(Duration(microseconds: 200));
              await nearbyService.startBrowsingForPeers();
            } else {
              await nearbyService.stopAdvertisingPeer();
              await nearbyService.stopBrowsingForPeers();
              await Future.delayed(Duration(microseconds: 200));
              await nearbyService.startAdvertisingPeer();
              await nearbyService.startBrowsingForPeers();
            }
          }*/
        });

    devicesSubscription =
        nearbyService.stateChangedSubscription(callback: (devicesList) {
      devices.clear();
      devices.addAll(devicesList);
    });

    dataSubscription = nearbyService.dataReceivedSubscription(callback: (data) {
      Get.snackbar("New message", data['message']);
      print(data);
    });
  }

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

  void sendData(Device device) => nearbyService.sendMessage(device.deviceId, 'hello');


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
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
