import 'package:flutter/material.dart';
import 'package:spellable/models/item_model.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ItemModel item;

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.5, end: 0.8).animate(
        CurvedAnimation(parent: _controller!, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.item.playSound();
      },
      child: AnimatedBuilder(
        animation: _animation!,
        builder: (context, child) => Transform.scale(
          scale: _animation!.value,
          child: Image.asset(widget.item.image),
        ),
      ),
    );
  }
}
