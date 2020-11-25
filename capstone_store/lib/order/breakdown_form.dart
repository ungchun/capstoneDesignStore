import 'package:capstone_store/order/detail_breakdown.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class OrderListItem extends StatefulWidget {
  final QueryDocumentSnapshot doc;
  OrderListItem(this.doc);

  @override
  _OrderListItemState createState() => _OrderListItemState();
}

class _OrderListItemState extends State<OrderListItem> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  int menuSize;
  var tempPrice = 0;
  Stream stream;
  var name = "";

  @override
  void initState() {
    super.initState();
    menuSize = widget.doc.data()['menu'].length;

    stream = FirebaseFirestore.instance
        .collection('menu')
        .where('ID', isEqualTo: widget.doc.data()['category'])
        .snapshots();

    for (int i = 0; i < menuSize; i++) {
      tempPrice +=
          widget.doc.data()['price'][i] * widget.doc.data()['count'][i];
      name = name + widget.doc.data()['menu'][i];
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: stream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.data == null) return new Text(""); // 이거 안넣어주면 오류남
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Divider(
            //   height: 30,
            //   thickness: 10,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    "주문 번호 : ${widget.doc.id}",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
                  child: Text(
                    '${widget.doc.data()['주문시간']}',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 2, 0, 0),
              child: Text(
                "${widget.doc.data()['menu']}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 2, 0, 0),
                        child: Text(
                          // "${widget.doc.data()['price']}",
                          "${NumberFormat('###,###,###,###').format(tempPrice).replaceAll(' ', '')} 원",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 2, 20, 0),
                        child: widget.doc.data()['상태'] == "대기"
                            ? Text("비어 있음")
                            : Text('${widget.doc.data()['상태']}번 보관함'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Detailbreakdown(widget.doc)));
                    },
                    child: Text("주문상세"),
                  ),
                ),
              ],
            ),
            Divider(
              height: 30,
              thickness: 10,
            ),
          ],
        );
      },
    );
  }
}
