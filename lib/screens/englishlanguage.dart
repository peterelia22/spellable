import 'package:flutter/material.dart';
import 'package:spellable/constants.dart';
import 'package:spellable/screens/alphabeta.dart';
import 'package:spellable/screens/numbers.dart';
import 'package:spellable/widgets/languages.dart';

class EnglishPage extends StatelessWidget {
  const EnglishPage({Key? key, required this.backgroundImagePath})
      : super(key: key);
  final String backgroundImagePath;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImagePath),
            fit: BoxFit.fill, // You can change the BoxFit to fit your needs
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AlphaBetaPage();
                      }));
                    },
                    child: languages(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      text: "alphabet",
                      path: alphpa,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return NumbersPage();
                      }));
                    },
                    child: languages(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      text: 'numbers',
                      path: numbers,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
