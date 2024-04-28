import 'package:flutter/material.dart';
import 'package:spellable/constants.dart';
import 'package:spellable/screens/languages.dart';
import 'package:spellable/widgets/Card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Center(
            child: CARD(
              image: boy,
              tittle: "BOY",
            ),
          ),
          SizedBox(
            width: 25,
          ),
          CARD(image: girl, tittle: "GIRL")
        ],
      ),
    );
  }
}
