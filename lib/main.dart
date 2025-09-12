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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyanAccent,
                    foregroundColor: Colors.black,
                  ),
                  child:
                    Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    foregroundColor: Colors.black,
                  ),
                  child:
                  Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.black,
                  ),
                  child:
                  Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.black,
                  ),
                  child:
                  Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                  ),
                  child:
                  Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.black,
                  ),
                  child:
                  Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.black,
                  ),
                  child:
                  Text('Click Me!'),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
