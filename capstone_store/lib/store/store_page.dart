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
        child: Row(children: <Widget>[
          Column(children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(44, 25, 0, 0)),
            Icon(Icons.call_end),
            Text(
              '오늘 주문 받은 량 : $_order_counter',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ]),
        ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _increase_order_counter,
        tooltip: 'increase',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _increase_order_counter() {
    setState(() {
      _order_counter++;
    });
  }
}
