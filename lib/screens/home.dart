import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spellable/constants.dart';
import 'package:spellable/screens/languages.dart';
import 'package:spellable/widgets/Card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LanguagesPage(path: boyback);
                  })); // Added semicolon and closing parentheses
                },
                child: const CARD(
                  image: boy,
                  tittle: "BOY", // Fixed typo in title
                  height: genderHeigh, // Fixed typo in height
                  color: Colors.blue,
                  width: genderWidth,
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LanguagesPage(path: girlback);
                  })); // Added semicolon and closing parentheses
                },
                child: const CARD(
                  image: girl,
                  tittle: "GIRL",
                  height: genderHeigh,
                  color: Colors.pink,
                  width: genderWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
