import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {

  void playSound(int noteNum) {
    final player = AudioPlayer();
    player.audioCache = AudioCache();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded buildKey({ required int noteNum, required Color color}) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            playSound(noteNum);
          },
          style: TextButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.black,
          ),
          child:
          Text('Note $noteNum'),
        ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildKey(noteNum: 1, color: Colors.cyan),
              buildKey(noteNum: 2, color: Colors.purple),
              buildKey(noteNum: 3, color: Colors.deepOrange),
              buildKey(noteNum: 4, color: Colors.amber),
              buildKey(noteNum: 5, color: Colors.teal),
              buildKey(noteNum: 6, color: Colors.blue),
              buildKey(noteNum: 7, color: Colors.lightGreen),
            ]
          ),
        ),
      ),
    );
  }
}
