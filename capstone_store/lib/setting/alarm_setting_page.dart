import 'package:capstone_store/123.dart';
import 'package:flutter/material.dart';
import '../size_config.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '알림',
          style: TextStyle(fontSize: getProportionateScreenWidth(25)),
        ),
      ),
      body: Firebase(),
    );
  }
}
