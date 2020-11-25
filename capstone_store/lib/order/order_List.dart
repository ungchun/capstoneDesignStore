import 'package:capstone_store/order/breakdown_form.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  Stream stream;
  int idx = 0;
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
              idx = index + 1;
              return (snapshot.data.docs[index].data()['상태'] == '대기'
                  ? OrderListItem(snapshot.data.docs[index])
                  : SizedBox.shrink());
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          idx++;
          FirebaseFirestore.instance.collection('order').doc('$idx').set(
            {
              "menu": ["아메리카노", "카페라떼", '사과주스', '불고기 샌드위치'],
              "count": [4, 5, 5, 1],
              "price": [4300, 3500, 3500, 3800],
              "상태": "대기",
              "카페이름": "성훈카페",
              "cafeID": "2",
              "주문시간": "${formatDate(DateTime.now(), [HH, ':', nn, ':', ss])}"
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
