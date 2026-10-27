import 'package:flutter/material.dart';

class HydrationTipTile extends StatelessWidget {
  final String text;

  const HydrationTipTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF45B3EF),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color(0xFF083B8D),
        ),
      ),
    );
  }
}
