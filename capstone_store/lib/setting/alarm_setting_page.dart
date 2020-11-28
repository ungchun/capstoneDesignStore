import 'package:capstone_store/123.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '알림',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Firebase(),
    );
  }
}
