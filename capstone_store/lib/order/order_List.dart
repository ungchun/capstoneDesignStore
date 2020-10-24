import 'package:capstone_store/order/breakdown_form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'insert_breakdown.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  Stream stream;

  Stream insert;

  @override
  void initState() {
    super.initState();

    stream = FirebaseFirestore.instance
        .collection('order')
        .orderBy('주문시간', descending: false)
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.data == null) return Text(""); // 이거 안넣어주면 오류남
          return ListView.builder(
            itemCount: snapshot.data.size,
            itemBuilder: (BuildContext context, int index) {
              // 나중에 db count 값 넘기고, index 0 인 부분만 divider 하나 더 추가하기
              return OrderListItem(snapshot.data.docs[index]);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => InsertBreakdown()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
