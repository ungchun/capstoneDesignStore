import 'package:flutter/material.dart';

class Information_Page extends StatefulWidget {
  @override
  _Information_PageState createState() => _Information_PageState();
}

class _Information_PageState extends State<Information_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '정보',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Text('Information_Page'),
    );
  }
}
