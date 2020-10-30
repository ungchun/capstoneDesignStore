import 'package:capstone_store/order/breakdown_form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  Stream stream;

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
              // if (snapshot.data.docs[index].data()['상태'] == '대기')
              return OrderListItem(snapshot.data.docs[index]);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection('order').doc('2').set({
            "menu": ["아메리카노", "카페라떼", '사과주스', '불고기 샌드위치'],
            "count": [4, 5, 5, 1],
            "price": [4300, 3500, 3500, 3800],
            "상태": "",
            "카페이름": "성훈카페",
            "cafeID": "2",
            "주문시간": "09:00"
          });
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => InsertBreakdown()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
