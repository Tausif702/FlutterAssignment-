import 'package:flutter/material.dart';
import '../widgets/sensor_display.dart'; // Ensure correct import path

class SensorDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example usage
    List<Map<String, dynamic>> sensors = [
      {'name': 'Temperature', 'value': 25.5},
      {'name': 'Humidity', 'value': 60.0},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Sensor Dashboard'),
      ),
      body: ListView.builder(
        itemCount: sensors.length,
        itemBuilder: (context, index) {
          return SensorDisplay(
            sensorName: sensors[index]['name'],
            sensorValue: sensors[index]['value'],
          );
        },
      ),
    );
  }
}
