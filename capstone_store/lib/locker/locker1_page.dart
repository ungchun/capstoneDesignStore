import 'package:flutter/material.dart';

class Locker1Page extends StatefulWidget {
  @override
  _Locker1PageState createState() => _Locker1PageState();
}

class _Locker1PageState extends State<Locker1Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ButtonBar(
      mainAxisSize: MainAxisSize.min,
      children: [
        RaisedButton(
          onPressed: null,
          child: Text(
            '1',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ));
  }
}
