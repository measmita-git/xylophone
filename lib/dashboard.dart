import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class DashboardScreen extends StatelessWidget {
  void playSound(int soundPlay) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundPlay.mp3'));
  }

  Expanded buildKey({Color? color, required int soundPlay}) {
    return Expanded(
      child: Container(
        color: color,
        child: ElevatedButton(
          child: Text(
            "click me",
          ),
          onPressed: () {
            playSound(soundPlay);
          },
        ),
      ),
    );
  }

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildKey(color: Colors.red, soundPlay: 1),
            buildKey(color: Colors.yellow, soundPlay: 2),
            buildKey(color: Colors.blue, soundPlay: 3),
            buildKey(color: Colors.purple, soundPlay: 4),
            buildKey(color: Colors.green, soundPlay: 5),
            buildKey(color: Colors.greenAccent, soundPlay: 6),
            buildKey(color: Colors.pinkAccent, soundPlay: 7),
          ],
        ),
      ),
    );
  }
}
