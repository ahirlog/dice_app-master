import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var diceNum = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Align(
            alignment: Alignment.center,
            child: Text('DICE APP'),
          ),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      diceNum = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset(
                    "images/dice$diceNum.png",
                    height: 220,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    diceNum = Random().nextInt(6) + 1;
                    print(diceNum);
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(
                    15,
                  ),
                  child: Text(
                    'Flip',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
