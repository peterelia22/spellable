import 'package:flutter/material.dart';
import 'package:spellable/models/item_model.dart';
import 'package:spellable/widgets/item_widget.dart';
import 'package:spellable/widgets/items_page.dart';

class AlphaBetaPage extends StatelessWidget {
  const AlphaBetaPage({
    super.key,
    required this.path,
  });
  final String path;
  final List<ItemModel> alpha = const [
    ItemModel(
      sound: 'sounds/alpha/A.wav',
      image: 'assets/images/A.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/B.wav',
      image: 'assets/images/B.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/C.wav',
      image: 'assets/images/C.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/D.wav',
      image: 'assets/images/D.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/E.wav',
      image: 'assets/images/E.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/F.wav',
      image: 'assets/images/F.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/G.wav',
      image: 'assets/images/G.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/H.wav',
      image: 'assets/images/H.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/I.wav',
      image: 'assets/images/I.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/J.wav',
      image: 'assets/images/J.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/K.wav',
      image: 'assets/images/K.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/L.wav',
      image: 'assets/images/L.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/M.wav',
      image: 'assets/images/M.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/N.wav',
      image: 'assets/images/N.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/O.wav',
      image: 'assets/images/O.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/P.wav',
      image: 'assets/images/P.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/Q.wav',
      image: 'assets/images/Q.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/R.wav',
      image: 'assets/images/R.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/S.wav',
      image: 'assets/images/S.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/T.wav',
      image: 'assets/images/T.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/U.wav',
      image: 'assets/images/U.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/V.wav',
      image: 'assets/images/V.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/W.wav',
      image: 'assets/images/W.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/X.wav',
      image: 'assets/images/X.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/Y.wav',
      image: 'assets/images/Y.jpg',
    ),
    ItemModel(
      sound: 'sounds/alpha/Z.wav',
      image: 'assets/images/Z.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemsPage(path: path, numbers: alpha),
    );
  }
}
