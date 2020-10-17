import 'package:flutter/material.dart';

class Alarm_Page extends StatefulWidget {
  @override
  _Alarm_PageState createState() => _Alarm_PageState();
}

class _Alarm_PageState extends State<Alarm_Page> {
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
      body: Text('Alarm_Page'),
    );
  }
}
