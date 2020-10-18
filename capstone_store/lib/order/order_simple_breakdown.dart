import 'package:flutter/material.dart';

class Simple_Breakdown extends StatefulWidget {
  Simple_Breakdown(
      {Key key,
      this.customer,
      this.sum_price,
      this.order_time,
      this.order_list})
      : super(key: key);
  final String customer;
  final String sum_price;
  final String order_time;
  final List<String> order_list;
  @override
  _Simple_BreakdownState createState() => _Simple_BreakdownState();
}

class _Simple_BreakdownState extends State<Simple_Breakdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.customer,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(widget.order_time),
                  Text('Price : ' + widget.sum_price)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
