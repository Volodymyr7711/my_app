import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VidgetState();
  }
}

class VidgetState extends StatefulWidget {
  @override
  MainVidgetState createState() => MainVidgetState();
}

class MainVidgetState extends State<VidgetState> {
  Color mainColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
            backgroundColor: mainColor,
            appBar: AppBar(
              title:
                  Text('Tap Please', style: TextStyle(color: Colors.white24)),
              backgroundColor: Colors.cyan,
            ),
            body: GestureDetector(
              behavior: HitTestBehavior.opaque, //or HitTestBehavior.opaque
              onTap: () {
                setState(() {
                  mainColor = Color.fromRGBO(Random().nextInt(254) + 1,
                      Random().nextInt(254) + 1, Random().nextInt(254) + 1, 1);
                });
              },
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.orange[800], Colors.red[200]]),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text('Hey there',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    width: 150,
                    height: 50,
                  ),
                ),
              ),
            )));
  }
}
