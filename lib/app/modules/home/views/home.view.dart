import 'package:cryptography/cryptography.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peer_chat/app/core/widgets/drawer.dart';

import '../controllers/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Obx(() {
          if (controller.user.value == null) return const SizedBox();
          return AppDrawer(user: controller.user.value!);
        }),
        appBar: AppBar(
          title: const Text('All Chats'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.add_ic_call_outlined),
                text: 'All',
              ),
              Tab(
                icon: Icon(Icons.done_all),
                text: 'Approved',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAll(),
            _buildAll(),
          ],
        ),
      ),
    );
  }

  Widget _buildAll() {
    return Center(
      child: Column(
        children: [
          /*OutlinedButton(
            onPressed: controller.startBrowsing,
            child: const Text('Browse'),
          ),
          OutlinedButton(
            onPressed: controller.startAdvertising,
            child: const Text('Advertise'),
          ),*/
          ObxValue(
            (devices) => ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, index) {
                final device = devices[index];
                return ListTile(
                  title: Text(device.user.fullName),
                  onLongPress: () => controller.showUserBottomsheet(device.user.uuid),
                  leading: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () => controller.sendData(
                      device.device.deviceId,
                      'message',
                    ),
                  ),
                  /*trailing: IconButton(
                    icon: const Icon(Icons.connect_without_contact),
                    onPressed: () => controller.connectToDevice(device.device),
                  ),*/
                );
              },
              separatorBuilder: (_, __) => Container(
                width: 1,
                height: 1,
                color: Colors.black,
              ),
              itemCount: devices.value.length,
            ),
            controller.devices,
          ),
        ],
      ),
    );
  }
}
