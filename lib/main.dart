import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playNote(int noteNumber) {
    AudioCache player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildXyloKey({Color keyColor, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playNote(noteNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildXyloKey(keyColor: Colors.red, noteNumber: 1),
                buildXyloKey(keyColor: Colors.orange, noteNumber: 2),
                buildXyloKey(keyColor: Colors.yellow, noteNumber: 3),
                buildXyloKey(keyColor: Colors.green, noteNumber: 4),
                buildXyloKey(keyColor: Colors.blue, noteNumber: 5),
                buildXyloKey(keyColor: Colors.indigo, noteNumber: 6),
                buildXyloKey(keyColor: Colors.purple, noteNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
