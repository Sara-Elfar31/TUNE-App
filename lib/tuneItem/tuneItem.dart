import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class tuneItem
{
  final Color color ;
  final String sound ;

  const tuneItem({required this.color,required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}