import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {

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
                    final player = AudioPlayer();
                    player.audioCache = AudioCache();
                    player.play(AssetSource('note1.wav'));
                  },
                  child:
                    Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.audioCache = AudioCache();
                    player.play(AssetSource('note2.wav'));
                  },
                  child:
                    Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.audioCache = AudioCache();
                    player.play(AssetSource('note3.wav'));
                  },
                  child:
                    Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.audioCache = AudioCache();
                    player.play(AssetSource('note4.wav'));
                  },
                  child:
                    Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.audioCache = AudioCache();
                    player.play(AssetSource('note5.wav'));
                  },
                  child:
                    Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.audioCache = AudioCache();
                    player.play(AssetSource('note6.wav'));
                  },
                  child:
                    Text('Click Me!'),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.audioCache = AudioCache();
                    player.play(AssetSource('note7.wav'));
                  },
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
