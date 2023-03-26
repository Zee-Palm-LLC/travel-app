import 'package:flutter/material.dart';

class CircularRadiusCard extends StatelessWidget {
  const CircularRadiusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 700,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.withOpacity(0.5))),
    );
  }
}
