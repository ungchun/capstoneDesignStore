import 'package:flutter/material.dart';

class Order_State extends StatefulWidget {
  @override
  _Order_StateState createState() => _Order_StateState();
}

class _Order_StateState extends State<Order_State> {
  final List<String> _OrderStateList = <String>[];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List'),
      ),
      body: Center(
        child: Container(
          child: Text('order List'),
        ),
      ),
    );
  }
}