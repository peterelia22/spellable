import 'package:flutter/material.dart';
import 'package:spellable/constants.dart';
import 'package:spellable/screens/englishlanguage.dart';
import 'package:spellable/widgets/languages.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage({
    Key? key,
    required this.path,
  }) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(path), // Default background image
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EnglishPage(
                      backgroundImagePath: path,
                    );
                  }));
                },
                child: languages(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  text: "ENGLISH",
                  path: english,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
