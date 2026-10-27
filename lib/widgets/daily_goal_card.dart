import 'package:flutter/material.dart';

class DailyGoalCard extends StatelessWidget {
  final bool compact;

  const DailyGoalCard({super.key, this.compact = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: compact ? 14 : 18,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF2FAFF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Daily Water Goal',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: compact ? 15 : 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF102F68),
            ),
          ),
          Text(
            '8',
            style: TextStyle(
              fontSize: compact ? 68 : 76,
              height: 1.05,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF123C8E),
            ),
          ),
          const Text(
            'glasses per day',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF16458C),
            ),
          ),
        ],
      ),
    );
  }
}
