import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything '),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    ballno = Random().nextInt(5) + 1;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              setState(() {});
            },
            child: Image.asset('images/ball$ballno.png'),
          ),
        ],
      ),
    );
  }
}
