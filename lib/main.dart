import 'package:flutter/material.dart';

import 'screens/water_tracker.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Tracker',
      home: WaterTracker(),
    );
  }
}
