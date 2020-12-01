import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class Locker extends StatefulWidget {
  final QueryDocumentSnapshot doc1;
  final QueryDocumentSnapshot doc2;
  Locker(this.doc1, this.doc2);

  @override
  _LockerState createState() => _LockerState();
}

class _LockerState extends State<Locker> {
  Stream stream;
  @override
  void initState() {
    super.initState();

    stream = FirebaseFirestore.instance.collection('locker').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.doc1.id} 번 보관함',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: stream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.data == null) return Text(""); // 이거 안넣어주면 오류남
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${widget.doc1.id} 번 보관함 선택 완료!',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(30),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
