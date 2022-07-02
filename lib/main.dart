// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numberOfBall = 1;
  void changeBallAnswer() {
    setState(() {
      numberOfBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(child: Text('Ask Me Anything')),
      ),
      body: TextButton(
        onPressed: () {
          changeBallAnswer();
        },
        child: Center(
          child: Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset('images/ball$numberOfBall.png'),
            ),
          ),
        ),
      ),
    );
  }
}
