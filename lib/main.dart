import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = 1;
  void Shuffle() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black38,
          titleSpacing: 20,
          title: Text('Magic 8 Ball'),
          titleTextStyle: const TextStyle(fontFamily: 'Pacifico', fontSize: 24),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Shuffle();
                  },
                  child: Image.asset('images/ball$ballNumber.png'),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
