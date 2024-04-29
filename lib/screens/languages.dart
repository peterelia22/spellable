import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spellable/constants.dart';
import 'package:spellable/screens/englishlanguage.dart';
import 'package:spellable/widgets/Card.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage({Key? key, required this.sound}) : super(key: key);

  final String sound;

  // Define a function to play sound
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                // Call the function to play the sound
                playSound();

                // Navigate to the EnglishPage if needed
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return EnglishPage();
                // }));
              },
              child: Column(
                children: [
                  Image.asset(
                    english,
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.4,
                  ),
                  SizedBox(height: 10),
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
