import 'package:flutter/material.dart';

import 'insert_breakdown.dart';
import 'order_list.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '주문 현황',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: OrderList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => InsertBreakdown()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
