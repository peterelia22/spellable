import 'package:flutter/material.dart';
import 'package:spellable/constants.dart';
import 'package:spellable/screens/englishlanguage.dart';
import 'package:spellable/widgets/Card.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeigh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EnglishPage();
                }));
              },
              child: Column(
                children: [
                  Image.asset(
                    english,
                    height: screenHeigh * 0.3,
                    width: screenWidth * 0.4,
                  ),
                  Text(
                    "English",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
