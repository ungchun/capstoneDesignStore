import 'package:capstone_store/size_config.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '정보',
          style: TextStyle(fontSize: getProportionateScreenWidth(25)),
        ),
      ),
      body: Text('Information_Page'),
    );
  }
}
