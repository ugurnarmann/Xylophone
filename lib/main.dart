import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XlyophoneApp());

class XlyophoneApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.teal[800],
            title: Center(
              child: Text('Xlyophone'),
            ),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Nota(
                  color: Colors.red,
                  assetName: 'note1.wav',
                ),
                Nota(
                  color: Colors.orange,
                  assetName: 'note2.wav',
                ),
                Nota(
                  color: Colors.yellow,
                  assetName: 'note3.wav',
                ),
                Nota(
                  color: Colors.green,
                  assetName: 'note4.wav',
                ),
                Nota(
                  color: Colors.teal,
                  assetName: 'note5.wav',
                ),
                Nota(
                  color: Colors.blue,
                  assetName: 'note6.wav',
                ),
                Nota(
                  color: Colors.purple,
                  assetName: 'note7.wav',
                ),
              ],
            ),
          ),
        ));
  }
}

class Nota extends StatelessWidget {
  final Color color;
  final String assetName;
  Nota({Key key, this.color, this.assetName}) : super(key: key);

  void playSound({String assetName}) {
    final player = AudioCache();
    player.play(assetName);
    assetName = null;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(assetName: assetName);
        },
        color: color,
      ),
    );
  }
}
