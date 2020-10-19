import 'package:flutter/material.dart';

import 'breakdown_form.dart';

class Order_List extends StatefulWidget {
  @override
  _Order_ListState createState() => _Order_ListState();
}

class _Order_ListState extends State<Order_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: [
          Breakdown(
            customer: '홍길동',
            sum_price: '15000',
            order_time: '50s',
            memo: '맛있게',
          ),
          Breakdown(
            customer: '홍길동 부인',
            sum_price: '15000',
            order_time: '500s',
            memo: '기가막히게',
          ),
          Breakdown(
            customer: '홍길동',
            sum_price: '15000',
            order_time: '50s',
            memo: '맛있게',
          ),
          Breakdown(
            customer: '홍길동',
            sum_price: '15000',
            order_time: '50s',
            memo: '맛있게',
          ),
          Breakdown(
            customer: '홍길동',
            sum_price: '15000',
            order_time: '50s',
            memo: '맛있게',
          ),
        ],
      ),
    );
  }
}
