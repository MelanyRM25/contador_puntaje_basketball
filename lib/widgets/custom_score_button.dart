import 'package:flutter/material.dart';

class CustomScoreButton extends StatelessWidget {
  final String points;
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor; // Color de fondo opcional
  final Color? textColor; // Color del texto opcional

  const CustomScoreButton({
    super.key,
    required this.points,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // Si no le pasas color, usa por defecto el verde que tenías
        backgroundColor:
            backgroundColor ?? const Color.fromARGB(255, 10, 134, 97),
        foregroundColor: textColor ?? const Color.fromARGB(255, 247, 245, 245),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                points,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  backgroundColor: backgroundColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
              color: textColor,
              backgroundColor: backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
