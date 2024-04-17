import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ColorItem {
  final Color color;
  final String sound;

  ColorItem({
    required this.color,
    required this.sound,
  });

  playsound() {
    final player = AudioPlayer();
    player.play(
      AssetSource(sound),
    );
  }
}
