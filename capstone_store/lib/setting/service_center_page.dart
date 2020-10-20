import 'package:flutter/material.dart';

class Service_Page extends StatefulWidget {
  @override
  _Service_PageState createState() => _Service_PageState();
}

class _Service_PageState extends State<Service_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '고객센터',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Text('Service_Page'),
    );
  }
}
