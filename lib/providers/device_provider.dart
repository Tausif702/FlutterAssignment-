import 'package:flutter/foundation.dart';
import '../models/device.dart';
import '../services/api_service.dart';

class DeviceProvider with ChangeNotifier {
  List<Device> _devices = [];

  List<Device> get devices => _devices;

  DeviceProvider() {
    fetchDevices();
  }

  Future<void> fetchDevices() async {
    _devices = await ApiService().fetchDevices();
    notifyListeners();
  }
}
