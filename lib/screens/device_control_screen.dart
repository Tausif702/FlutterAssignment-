import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/device_provider.dart';
import '../../widgets/device_toggle.dart';

class DeviceControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devices = Provider.of<DeviceProvider>(context).devices;

    return Scaffold(
      appBar: AppBar(
        title: Text('Device Control Panel'),
      ),
      body: ListView.builder(
        itemCount: devices.length,
        itemBuilder: (context, index) {
          return DeviceToggle(device: devices[index]);
        },
      ),
    );
  }
}
