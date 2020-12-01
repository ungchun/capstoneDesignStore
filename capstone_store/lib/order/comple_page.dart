import 'package:capstone_store/order/comple_order.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class CompletedOrderPage extends StatefulWidget {
  @override
  _CompletedOrderPageState createState() => _CompletedOrderPageState();
}

class _CompletedOrderPageState extends State<CompletedOrderPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '주문 완료 현황',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
          ),
        ),
      ),
      body: CompletedOrder(),
    );
  }
}
