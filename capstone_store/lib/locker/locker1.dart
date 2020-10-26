import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Locker1 extends StatefulWidget {
  final QueryDocumentSnapshot doc;
  Locker1(this.doc);

  @override
  _Locker1State createState() => _Locker1State();
}

class _Locker1State extends State<Locker1> {
  Stream stream;
  @override
  void initState() {
    super.initState();

    stream = FirebaseFirestore.instance.collection('locker').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1번 보관함'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.data == null) return Text('');
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${widget.doc.id} 번 보관함 상태'),
              Text('${widget.doc.data()['state']}'),
            ],
          );
        },
      ),
    );
  }
}
