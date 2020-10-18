import 'package:capstone_store/order/order_simple_breakdown.dart';
import 'package:flutter/material.dart';

class Order_List extends StatefulWidget {
  @override
  _Order_ListState createState() => _Order_ListState();
}

class _Order_ListState extends State<Order_List> {
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
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: [
          Simple_Breakdown(
            customer: '홍길동',
            sum_price: '15000',
            order_time: '50s',
          ),
          Simple_Breakdown(
            customer: '홍길동 부인',
            sum_price: '15000',
            order_time: '500s',
          )
        ],
      ),
    );
  }
}
