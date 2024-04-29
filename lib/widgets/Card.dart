import 'package:flutter/material.dart';
import 'package:spellable/screens/languages.dart';

class CARD extends StatelessWidget {
  const CARD({
    super.key,
    re,
    required this.image,
    required this.tittle,
    required this.height,
    required this.width,
    required this.color,
  });
  final String image;
  final String tittle;
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Align children to the bottom
        children: [
          Image.asset(
            image,
            height: height,
            width: width,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            tittle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          )
        ],
      ),
    );
  }
}
