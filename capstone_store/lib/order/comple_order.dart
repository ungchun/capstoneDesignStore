import 'package:capstone_store/order/breakdown_form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class CompletedOrder extends StatefulWidget {
  @override
  _CompletedOrderState createState() => _CompletedOrderState();
}

class _CompletedOrderState extends State<CompletedOrder> {
  Stream stream;

  @override
  void initState() {
    super.initState();

    stream = FirebaseFirestore.instance
        .collection('order')
        .orderBy('주문시간', descending: false)
        .snapshots();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.data == null) return Text(""); // 이거 안넣어주면 오류남
          return ListView.builder(
            itemCount: snapshot.data.size,
            itemBuilder: (BuildContext context, int index) {
              return (snapshot.data.docs[index].data()['상태'] == '제작완료'
                  ? OrderListItem(snapshot.data.docs[index])
                  : SizedBox.shrink());
            },
          );
        },
      ),
    );
  }
}
