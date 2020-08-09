import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          onPressToHear(soundNumber);
        },
        color: color,
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
            children: <Widget>[
              buildKey(color: Colors.deepOrange, soundNumber: 1),
              buildKey(color: Colors.pink, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.redAccent, soundNumber: 4),
              buildKey(color: Colors.lightGreenAccent, soundNumber: 5),
              buildKey(color: Colors.orange, soundNumber: 6),
              buildKey(color: Colors.purpleAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  onPressToHear(int numOfButton) {
    final player = AudioCache();

    player.play('note$numOfButton.wav');
  }
}
