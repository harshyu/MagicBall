import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              title: Text('Ask Me Anything'),),
            body: BallPage(),
      ) //BallPage(),
          ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber =1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){
        setState(() {
         ballNumber= Random().nextInt(4) +1;
        });
        print(ballNumber);
      },
      child: Center(
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
