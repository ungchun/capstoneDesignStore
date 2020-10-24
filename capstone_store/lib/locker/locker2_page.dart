import 'package:flutter/material.dart';

class Locker2Page extends StatefulWidget {
  @override
  _Locker2PageState createState() => _Locker2PageState();
}

class _Locker2PageState extends State<Locker2Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ButtonBar(
      mainAxisSize: MainAxisSize.min,
      children: [
        RaisedButton(
          onPressed: null,
          child: Text(
            '2',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ));
  }
}
