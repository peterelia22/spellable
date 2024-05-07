import 'package:flutter/material.dart';
import 'package:spellable/screens/languages.dart';

class CARD extends StatelessWidget {
  const CARD({
    super.key,
    re,
    required this.image,
    required this.height,
    required this.width,
    required this.color,
  });
  final String image;

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: height,
              width: width,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
