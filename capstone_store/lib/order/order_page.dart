import 'package:capstone_store/order/insert_breakdown.dart';
import 'package:flutter/material.dart';

import 'order_list.dart';

class Order_Page extends StatefulWidget {
  @override
  _Order_PageState createState() => _Order_PageState();
}

class _Order_PageState extends State<Order_Page> {
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
      body: Order_List(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Insert_Breakdown()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
