import 'package:flutter/material.dart';

class InsertBreakdown extends StatefulWidget {
  @override
  _InsertBreakdownState createState() => _InsertBreakdownState();
}

class _InsertBreakdownState extends State<InsertBreakdown> {
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
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
