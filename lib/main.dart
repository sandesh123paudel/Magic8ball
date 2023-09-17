import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
        backgroundColor: Colors.blue.shade200,

      ),
      body: MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  int ballNumber = 1;
  void ball() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              ball();
              print(ballNumber);
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        )
      ],
    ));
  }
}
