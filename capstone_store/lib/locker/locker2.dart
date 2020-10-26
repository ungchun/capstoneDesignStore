import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Locker2 extends StatefulWidget {
  final QueryDocumentSnapshot doc;
  Locker2(this.doc);

  @override
  _Locker2State createState() => _Locker2State();
}

class _Locker2State extends State<Locker2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2번 보관함'),
      ),
      body: Center(
        child: Text('2번 보관함'),
      ),
    );
  }
}
