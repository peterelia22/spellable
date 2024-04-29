import 'package:flutter/material.dart';
import 'package:spellable/constants.dart';

class languages extends StatelessWidget {
  const languages({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.text,
    required this.path,
  });

  final double screenHeight;
  final double screenWidth;
  final String text;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          path,
          height: screenHeight * 0.3,
          width: screenWidth * 0.4,
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
