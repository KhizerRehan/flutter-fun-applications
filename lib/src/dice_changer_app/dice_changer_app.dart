import 'dart:math';

import 'package:flutter/material.dart';

class DiceChangerApp extends StatefulWidget {
  @override
  _DiceChangerAppState createState() => _DiceChangerAppState();
}

class _DiceChangerAppState extends State<DiceChangerApp> {
  int leftDiceRollNumber = 1;
  int rightDiceRollNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceRollNumber = Random().nextInt(6) + 1;
      rightDiceRollNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: new Text(
              'Dice Changer',
              style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
        body: Center(
          child: new Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child:
                      Image.asset('assets/images/dice$leftDiceRollNumber.png'),
                  onPressed: () {
                    this.changeDiceFace();
                  },
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: FlatButton(
                  child:
                      Image.asset('assets/images/dice$rightDiceRollNumber.png'),
                  onPressed: () {
                    this.changeDiceFace();
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.red,
          tooltip: 'Toggle both Dice',
          mini: false,
          child: new Icon(Icons.text_rotation_angledown),
          onPressed: () {
            this.changeDiceFace();
          },
        ),
      ),
    );
  }
}
