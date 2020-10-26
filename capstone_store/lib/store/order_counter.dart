import 'package:flutter/material.dart';

class OrderCounter extends StatefulWidget {
  @override
  _OrderCounterState createState() => _OrderCounterState();
}

class _OrderCounterState extends State<OrderCounter> {
  var _ordercounter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '오늘 주문 받은 량 : $_ordercounter',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 25, 15, 25)),
              IconButton(
                  icon: Icon(Icons.call_end), onPressed: _increaseordercounter),
              Padding(padding: EdgeInsets.fromLTRB(0, 25, 50, 25)),
            ],
          ),
        ],
      ),
    );
  }

  void _increaseordercounter() {
    setState(
      () {
        _ordercounter++;
      },
    );
  }
}
