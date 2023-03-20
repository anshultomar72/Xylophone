import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playsong(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

  Expanded buildKey(Color color, int soundnumber) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color, // background
          // foreground
        ),
        onPressed: () {
          playsong(soundnumber);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.purple, 1),
              buildKey(Colors.indigo, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.orange, 6),
              buildKey(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}
