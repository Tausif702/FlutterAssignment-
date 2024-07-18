import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/device.dart';
import '../models/sensor.dart';

class ApiService {
  Future<List<Device>> fetchDevices() async {
    final response = await rootBundle.loadString('assets/mock_devices.json');
    final data = json.decode(response) as List;
    return data
        .map((device) => Device(name: device['name'], isOn: device['isOn']))
        .toList();
  }

  Future<List<Sensor>> fetchSensors() async {
    final response = await rootBundle.loadString('assets/mock_sensors.json');
    final data = json.decode(response) as List;
    return data
        .map((sensor) => Sensor(name: sensor['name'], value: sensor['value']))
        .toList();
  }
}
