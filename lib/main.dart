import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylo());

class Xylo extends StatelessWidget {
  void playSound(int soundNumber) async {
    final player = AudioPlayer();;
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey({required Color color, required int soundNumber, required String label}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: EdgeInsets.zero,  // No padding so it fills the space
        ),
        onPressed: () => playSound(soundNumber),
        child: Text(
          label,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1, label: 'Note 1'),
              buildKey(color: Colors.orange, soundNumber: 2, label: 'Note 2'),
              buildKey(color: Colors.yellow, soundNumber: 3, label: 'Note 3'),
              buildKey(color: Colors.green, soundNumber: 4, label: 'Note 4'),
              buildKey(color: Colors.teal, soundNumber: 5, label: 'Note 5'),
              buildKey(color: Colors.blue, soundNumber: 6, label: 'Note 6'),
              buildKey(color: Colors.purple, soundNumber: 7, label: 'Note 7'),
            ],
          ),
        ),
      ),
    );
  }
}
