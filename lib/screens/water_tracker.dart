import 'package:flutter/material.dart';

import '../widgets/daily_goal_card.dart';
import '../widgets/hydration_tip_tile.dart';

class WaterTracker extends StatelessWidget {
  const WaterTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF4FF),
      appBar: AppBar(
        title: const Text(
          'Water Tracker',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF1554B0),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isCompact = constraints.maxWidth < 360;
            final sidePadding = isCompact ? 16.0 : 24.0;

            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: sidePadding,
                vertical: isCompact ? 18 : 28,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 440),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Icon(
                        Icons.water_drop,
                        size: isCompact ? 64 : 76,
                        color: const Color(0xFF0D5BCB),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Stay Hydrated!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: isCompact ? 23 : 26,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0B2360),
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Build a healthy daily habit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF16458C),
                        ),
                      ),
                      const SizedBox(height: 20),
                      FractionallySizedBox(
                        widthFactor: isCompact ? 0.94 : 0.85,
                        child: DailyGoalCard(compact: isCompact),
                      ),
                      const SizedBox(height: 14),
                      const HydrationTipTile(text: 'Drink water regularly'),
                      const SizedBox(height: 10),
                      const HydrationTipTile(text: 'Bring your water bottle'),
                      const SizedBox(height: 12),
                      const Text(
                        'Every glass counts!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF16458C),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
