import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundplay(int s) {
    final player = AudioCache();
    player.play('note$s.wav');
  }

  Expanded buildkey({Color color, int audioId}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          soundplay(audioId);
        },
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
                buildkey(color: Colors.red, audioId: 1),
                buildkey(color: Colors.orange, audioId: 2),
                buildkey(color: Colors.yellow, audioId: 3),
                buildkey(color: Colors.green, audioId: 4),
                buildkey(color: Colors.teal, audioId: 5),
                buildkey(color: Colors.blue, audioId: 6),
                buildkey(color: Colors.purple, audioId: 7),
              ]),
        ),
      ),
    );
  }
}
