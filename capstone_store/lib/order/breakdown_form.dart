import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderListItem extends StatefulWidget {
  final QueryDocumentSnapshot doc;
  OrderListItem(this.doc);

  @override
  _OrderListItemState createState() => _OrderListItemState();
}

class _OrderListItemState extends State<OrderListItem> {
  // firestore 데이터 읽어오기 test
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  int menuSize;
  int price = 0;
  String tempPrice = "";
  Stream stream;

  @override
  void initState() {
    super.initState();
    menuSize = widget.doc.data()['menu'].length;

    for (int i = 0; i < menuSize; i++) {
      tempPrice = widget.doc.data()['price'][i];
      price += int.parse(tempPrice);
    }
    stream = FirebaseFirestore.instance
        .collection('cafe')
        .where('ID', isEqualTo: widget.doc.data()['cafeID'])
        .snapshots();
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
                      "회원 번호 : ${widget.doc.id}",
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
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 2, 0, 0),
                child: Text(
                  "${widget.doc.data()['카페이름']}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 2, 0, 0),
                child: Text(
                  // "${widget.doc.data()['price']}",
                  "$price 원",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => null));
                        // test();
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
        });
  }
}
// import 'package:flutter/material.dart';

// import 'order_button.dart';

// class Breakdown extends StatefulWidget {
//   Breakdown(
//       {Key key,
//       this.customer,
//       this.sum_price,
//       this.order_time,
//       this.order_list,
//       this.memo})
//       : super(key: key);
//   final String customer;
//   final String sum_price;
//   final String order_time;
//   final List<String> order_list;
//   final String memo;
//   @override
//   _BreakdownState createState() => _BreakdownState();
// /}

// class _BreakdownState extends State<Breakdown> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(2),
//       height: 100,
//       child: Card(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Expanded(
//                 child: Container(
//               padding: EdgeInsets.all(5),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [/
//                   Text(
//                     widget.customer,
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text(widget.order_time),
//                   Text('Price : ' + widget.sum_price),
//                 ],
//               ),
//             )),
//             Padding(
//               padding: EdgeInsets.all(5),
//               child: GestureDetectorButton(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
