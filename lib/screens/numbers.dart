import 'package:flutter/material.dart';
import 'package:spellable/models/item_model.dart';
import 'package:spellable/widgets/item_widget.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/numbers/1.wav',
      image: 'assets/images/1.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/2.wav',
      image: 'assets/images/2.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/3.wav',
      image: 'assets/images/3.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/4.wav',
      image: 'assets/images/4.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/5.wav',
      image: 'assets/images/5.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/6.wav',
      image: 'assets/images/6.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/7.wav',
      image: 'assets/images/7.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/8.wav',
      image: 'assets/images/8.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/9.wav',
      image: 'assets/images/9.jpg',
    ),
    ItemModel(
      sound: 'sounds/numbers/10.wav',
      image: 'assets/images/10.jpg',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: numbers.length, // itemCount should be here
        itemBuilder: (context, index) {
          return itemWidget(
              item: numbers[index]); // Make sure to use the correct class name
        },
      ),
    );
  }
}
