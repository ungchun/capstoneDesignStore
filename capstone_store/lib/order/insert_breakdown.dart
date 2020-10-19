import 'package:flutter/material.dart';

class Insert_Breakdown extends StatefulWidget {
  @override
  _Insert_BreakdownState createState() => _Insert_BreakdownState();
}

class _Insert_BreakdownState extends State<Insert_Breakdown> {
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '주문 추가',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: TextField(
              controller: myController,
            ),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: TextField(
              controller: myController1,
            ),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: TextField(
              controller: myController2,
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        insert(myController.toString(), myController1.toString(),
            myController2.toString());
      }),
    );
  }

  Widget insert(String cumstomer, String sum_price, String order_time) {}
}
