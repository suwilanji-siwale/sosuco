import 'package:flutter/material.dart';
import 'package:innovest/screens/intro_basic_screen.dart';


//The main method to first run
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stocash',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new IntroBasicScreen(),
    );
  }
}


  