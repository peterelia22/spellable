import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spellable/constants.dart';
import 'package:spellable/screens/languages.dart';
import 'package:spellable/widgets/Card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(path), fit: BoxFit.fill)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LanguagesPage(path: boyback);
                    }));
                  },
                  child: const CARD(
                    image: boy,
                    height: genderHeigh,
                    color: Colors.blue,
                    width: genderWidth,
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LanguagesPage(path: girlback);
                    }));
                  },
                  child: const CARD(
                    image: girl,
                    height: genderHeigh,
                    color: Colors.pink,
                    width: genderWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
