import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Xylophone(),
  );
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playNote(int noteNum) {
    final player = AudioCache();
    player.play('note$noteNum.wav',mode:PlayerMode.LOW_LATENCY ,
        stayAwake: false);
    print('btn$noteNum');
  }

  Expanded buildButton({int noteVal, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteVal);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(noteVal: 1, color: Colors.pink.shade500),
              buildButton(noteVal: 2, color: Colors.pink.shade400),
              buildButton(noteVal: 3, color: Colors.orangeAccent.shade100),
              buildButton(noteVal: 4, color: Colors.orangeAccent),
              buildButton(noteVal: 5, color: Colors.brown.shade400),
              buildButton(noteVal: 6, color: Colors.blueGrey.shade500),
              buildButton(noteVal: 7, color: Colors.indigo.shade400),
            ],
          ),
        ),
      ),
    );
  }
}
