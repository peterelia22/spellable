import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spellable/constants.dart';
import 'package:spellable/widgets/Card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: const Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: CARD(
                image: boy,
                tittle: "BOY",
                height: genderHeigh,
                color: Colors.blue,
                width: genderWidth,
              ),
            ),
            Center(
              child: CARD(
                image: girl,
                tittle: "GIRL",
                height: genderHeigh,
                color: Colors.pink,
                width: genderWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
