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
      body: 
      // Padding(
      //   padding: const EdgeInsets.fromLTRB(0,50,0,0),
      //   child: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(10,0,0,0),
      //             child: Text(
      //               "test",
      //               style: TextStyle(fontSize: 50),
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.fromLTRB(0,0,10,0),
      //             child: Icon(Icons.call_end),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),

    
        Container(
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(44, 25, 0, 0)),
            Icon(Icons.call_end),
            Text(
              '오늘 주문 받은 량 : $_order_counter',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ]),
        ]),
      ),

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
