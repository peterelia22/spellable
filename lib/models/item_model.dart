import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String image;

  const ItemModel({
    required this.sound,
    required this.image,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
