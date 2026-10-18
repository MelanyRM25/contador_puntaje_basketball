import 'package:flutter/material.dart';

class CustomScoreWidget extends StatelessWidget {
  final String teamName;
  final int score;
  final int fouls;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;

  CustomScoreWidget({
    required this.teamName,
    required this.score,
    required this.fouls,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.black,

        border: Border.all(color: borderColor ?? Colors.white, width: 3.0),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              teamName,
              style: const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              '$score',
              style: const TextStyle(fontSize: 70.0, color: Colors.white),
            ),
            const SizedBox(height: 4.0),
            Text(
              'Faltas: $fouls',
              style: const TextStyle(fontSize: 30.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
