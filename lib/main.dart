import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static final AudioCache player = AudioCache();

  void playSound(int soundNumber) => player.play('note$soundNumber.wav');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeyButton(color: Colors.red, soundNumber: 1),
              buildKeyButton(color: Colors.orange, soundNumber: 2),
              buildKeyButton(color: Colors.yellow, soundNumber: 3),
              buildKeyButton(color: Colors.green, soundNumber: 4),
              buildKeyButton(color: Colors.teal, soundNumber: 5),
              buildKeyButton(color: Colors.blue, soundNumber: 6),
              buildKeyButton(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKeyButton({@required color, @required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playSound(soundNumber),
        color: color,
        child: null,
      ),
    );
  }
}
