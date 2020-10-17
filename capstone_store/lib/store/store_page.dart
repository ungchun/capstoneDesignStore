import 'package:flutter/material.dart';

class Store_Page extends StatefulWidget {
  @override
  _Store_PageState createState() => _Store_PageState();
}

class _Store_PageState extends State<Store_Page> {
  var _order_counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                Text(
                  '오늘 주문 받은 량 : $_order_counter',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 25, 15, 25)),
                IconButton(
                    icon: Icon(Icons.call_end),
                    onPressed: _increase_order_counter),
                Padding(padding: EdgeInsets.fromLTRB(0, 25, 50, 25)),
              ]),
            ]),
      )),
    );
  }

  Widget _increase_order_counter() {
    setState(() {
      _order_counter++;
    });
  }
}
