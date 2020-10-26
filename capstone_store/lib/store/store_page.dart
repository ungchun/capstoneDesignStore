import 'package:capstone_store/store/order_counter.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '가게 상황',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: OrderCounter(),
    );
  }
}
