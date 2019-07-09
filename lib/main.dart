import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent.shade400,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontFamily: 'Linny',
                fontSize: 48.0,
              ),
            ),
            backgroundColor: Colors.blue.shade900,
          ),
          body: EightBall(),
        ),
      ),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNum = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Image.asset('images/ball$ballNum.png'),
            onPressed: () {
              setState(() {
                ballNum = Random().nextInt(5) + 1;
              });
              print('Current ball num = $ballNum');
            },
          )
        ],
      ),
    );
  }
}
