import 'package:capstone_store/locker/lockerselect.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Detailbreakdown extends StatefulWidget {
  final QueryDocumentSnapshot doc;
  Detailbreakdown(this.doc);

  _DetailbreakdownState createState() => _DetailbreakdownState();
}

class _DetailbreakdownState extends State<Detailbreakdown> {
  var tempPrice = 0;

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < widget.doc.data()['price'].length; i++) {
      tempPrice +=
          widget.doc.data()['price'][i] * widget.doc.data()['count'][i];
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '상세 내역',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 290, 0),
              child: Text(
                '${widget.doc.data()['카페이름']}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(350, 30, 0, 0),
              child: Text(
                '${widget.doc.data()['주문시간']}',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 50, 0, 0),
                    child: Container(
                      height: 250,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: widget.doc.data()['menu'].length,
                        itemBuilder: (BuildContext context, int index) {
                          return _menuview(widget.doc.data()['menu'][index]);
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 250,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: widget.doc.data()['count'].length,
                        itemBuilder: (BuildContext context, int index) {
                          return _countview(widget.doc.data()['count'][index]);
                        },
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 50),
                //     child: Container(
                //       height: 250,
                //       child: ListView.builder(
                //         physics: NeverScrollableScrollPhysics(),
                //         itemCount: widget.map['price'].length,
                //         itemBuilder: (BuildContext context, int index) {
                //           return _priceview(widget.map['price'][index]);
                //         },
                //       ),
                //     ),
                //   ),
                // ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 15, 0),
                    child: Container(
                      height: 250,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: widget.doc.data()['price'].length,
                        itemBuilder: (BuildContext context, int index) {
                          return _sumpriceview(widget.doc.data()['price']
                                  [index] *
                              widget.doc.data()['count'][index]);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 0,
              thickness: 5,
              indent: 38,
              endIndent: 38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                  child: Text(
                    '총 합',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 50, 0),
                  child: Text(
                    '$tempPrice 원',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LockerSelect(widget.doc),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuview(dynamic doc) {
    return Column(
      children: [
        Text(
          '$doc',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Divider(
        //   height: 10,
        //   color: Colors.black,
        //   indent: 0,
        // ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget _priceview(dynamic doc) {
    return Column(
      children: [
        Text(
          '$doc 원',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        // Divider(
        //   height: 10,
        //   color: Colors.black,
        //   endIndent: 38,
        // ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget _countview(dynamic doc) {
    return Column(
      children: [
        Text(
          '$doc 개',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        // Divider(
        //   height: 10,
        //   color: Colors.black,
        // ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  Widget _sumpriceview(dynamic doc) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '$doc 원',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        // Divider(
        //   height: 10,
        //   color: Colors.black,
        // ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
