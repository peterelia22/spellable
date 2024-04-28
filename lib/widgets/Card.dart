import 'package:flutter/material.dart';
import 'package:spellable/screens/languages.dart';

class CARD extends StatelessWidget {
  const CARD({super.key, re, required this.image, required this.tittle});
  final String image;
  final String tittle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LanguagesPage();
        }));
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Align children to the bottom
          children: [
            Image.asset(
              image,
              height: 100,
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              tittle,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
