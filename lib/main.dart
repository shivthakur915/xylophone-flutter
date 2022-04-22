// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded displayButton(int note) {
    Color color = Colors.red;
    String str = 'Sa';
    switch (note) {
      case 1:
        {
          color = Colors.red;
          str = 'Sa';
          break;
        }
      case 2:
        {
          color = Colors.orange;
          str = 'Re';
          break;
        }
      case 3:
        {
          color = Colors.yellow;
          str = 'Ga';
          break;
        }
      case 4:
        {
          color = Colors.green;
          str = 'Ma';
          break;
        }
      case 5:
        {
          color = Colors.blue;
          str = 'Pa';
          break;
        }
      case 6:
        {
          color = Colors.indigo;
          str = 'Dha';
          break;
        }
      case 7:
        {
          color = Colors.purple;
          str = 'Ni';
          break;
        }
    }
    return Expanded(
      child: FlatButton(
        onPressed: () {
          play(note);
        },
        color: color,
        child: Text(str),
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
              displayButton(1),
              displayButton(2),
              displayButton(3),
              displayButton(4),
              displayButton(5),
              displayButton(6),
              displayButton(7)
            ],
          ),
        ),
      ),
    );
  }
}
