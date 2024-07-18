import 'package:flutter/material.dart';
import '../models/device.dart';

class DeviceToggle extends StatelessWidget {
  final Device device;

  DeviceToggle({required this.device});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(device.name),
      trailing: Switch(
        value: device.isOn,
        onChanged: (value) {
          // Handle device toggle logic here
        },
      ),
    );
  }
}
