import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home.controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: controller.startBrowsing,
              child: Text('Browse'),
            ),
            OutlinedButton(
              onPressed: controller.startAdvertising,
              child: Text('Advertise'),
            ),
            ObxValue(
              (devices) => ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  final device = devices.value[index];
                  return ListTile(
                    title: Text(device.deviceId),

                    leading: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () => controller.sendData(device),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.connect_without_contact),
                      onPressed: () => controller.connectToDevice(device),
                    ),
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
      ),
    );
  }
}
