import 'package:flutter/foundation.dart';
import '../models/sensor.dart';
import '../services/api_service.dart';

class SensorProvider with ChangeNotifier {
  List<Sensor> _sensors = [];

  List<Sensor> get sensors => _sensors;

  SensorProvider() {
    fetchSensors();
  }

  Future<void> fetchSensors() async {
    _sensors = await ApiService().fetchSensors();
    notifyListeners();
  }
}
