import 'package:flutter/material.dart';

class SensorDisplay extends StatelessWidget {
  final String sensorName;
  final double sensorValue;

  const SensorDisplay({
    required this.sensorName,
    required this.sensorValue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(sensorName),
        subtitle: Text(sensorValue.toString()),
      ),
    );
  }
}
