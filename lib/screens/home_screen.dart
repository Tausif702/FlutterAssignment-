import 'package:flutter/material.dart';
import 'device_control_screen.dart';
import 'sensor_dashboard_screen.dart';
import 'schedule_task_screen.dart';
import 'user_settings_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Automation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DeviceControlScreen()),
                );
              },
              child: Text('Device Control Panel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SensorDashboardScreen()),
                );
              },
              child: Text('Sensor Dashboard'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScheduleTaskScreen()),
                );
              },
              child: Text('Schedule Tasks'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserSettingsScreen()),
                );
              },
              child: Text('User Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
