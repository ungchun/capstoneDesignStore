import 'package:capstone_store/tap_state.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.brown[200],
        accentColor: Colors.pink,
      ),
      home: Tap_Page(),
    );
  }
}
