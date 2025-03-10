import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class TuneModel{
  final Color color ;
  final String sound ;

  const TuneModel({required this.color, required this.sound});

  void playSound ()
  {
    AudioCache.instance = AudioCache(prefix: '');
    final player =  AudioPlayer();
    player.play(AssetSource(sound));
  }

}