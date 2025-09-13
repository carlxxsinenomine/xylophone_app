import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNum) {
    final player = AudioPlayer();
    player.audioCache = AudioCache();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded buildKey(int noteNum, Color color) {
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
              buildKey(1, Colors.cyan),
              buildKey(2, Colors.purple),
              buildKey(3, Colors.deepOrange),
              buildKey(4, Colors.amber),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.lightGreen),
            ]
          ),
        ),
      ),
    );
  }
}
