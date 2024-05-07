import 'package:flutter/material.dart';
import 'package:spellable/models/item_model.dart';
import 'package:spellable/widgets/item_widget.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({
    super.key,
    required this.path,
    required this.numbers,
  });

  final String path;
  final List<ItemModel> numbers;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.fill,
        ),
      ),
      child: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: numbers[index]);
        },
      ),
    );
  }
}
