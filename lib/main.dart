import 'package:flutter/material.dart';
import 'package:spellable/screens/splash.dart';

void main() {
  runApp(const spellable());
}

class spellable extends StatelessWidget {
  const spellable({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
