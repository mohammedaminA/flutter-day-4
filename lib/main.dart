import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override

  void playSound(number) {
    audioCache.play('note$number.wav');
  }

   Expanded buildKey(Color color, int fileNumber) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(fileNumber);
        },
    )
    );
  }
  final audioCache = new AudioCache();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          title: Text ('Play Xylophone Sounds'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              buildKey(Colors.red, 1),
              buildKey(Colors.blue, 2),
              buildKey(Colors.black, 3),
              buildKey(Colors.pink, 4),
              buildKey(Colors.grey, 5),
              buildKey(Colors.yellow, 6),
              buildKey(Colors.white, 7)
            ],
          )
          ),
        ),
      );
  }
}
