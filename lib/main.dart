import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Enjoy(),
      ),
    );

class Enjoy extends StatefulWidget {
  @override
  _EnjoyState createState() => _EnjoyState();
}

class _EnjoyState extends State<Enjoy> {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildKey({Color color, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundnumber: 1),
            buildKey(color: Colors.green, soundnumber: 2),
            buildKey(color: Colors.blue, soundnumber: 3),
            buildKey(color: Colors.yellow, soundnumber: 4),
            buildKey(color: Colors.pink, soundnumber: 5),
            buildKey(color: Colors.purple, soundnumber: 6),
            buildKey(color: Colors.orange, soundnumber: 7),
          ],
        ),
      ),
    );
  }
}
