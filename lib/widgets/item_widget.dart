import 'package:flutter/material.dart';
import 'package:spellable/models/item_model.dart';

class itemWidget extends StatelessWidget {
  const itemWidget({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        item.playSound();
      },
      child: Container(
        child: Image.asset(item.image),
      ),
    );
  }
}
