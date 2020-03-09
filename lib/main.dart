import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceApp());

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDice = 1;
  int rightDice = 1;

  void changeDice() {
    setState(() {
      leftDice = Random().nextInt(5) + 1;
      rightDice = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Dice Play'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
            child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeDice();
                },
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
