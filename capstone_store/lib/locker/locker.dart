import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Locker extends StatefulWidget {
  final QueryDocumentSnapshot doc;
  Locker(this.doc);

  @override
  _LockerState createState() => _LockerState();
}

class _LockerState extends State<Locker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.doc.id} 번 보관함',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      body: Center(
        child: Text('${widget.doc.data()['state']} 합니다.'),
      ),
    );
  }
}
