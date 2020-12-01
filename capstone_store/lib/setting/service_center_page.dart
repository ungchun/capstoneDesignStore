import 'package:capstone_store/size_config.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '고객센터',
          style: TextStyle(fontSize: getProportionateScreenWidth(25)),
        ),
      ),
      body: Text('Service_Page'),
    );
  }
}
