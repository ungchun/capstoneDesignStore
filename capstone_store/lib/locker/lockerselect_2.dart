import 'package:capstone_store/locker/locker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LockerSel2 extends StatefulWidget {
  final QueryDocumentSnapshot doc;
  LockerSel2(this.doc);
  @override
  _LockerSel2State createState() => _LockerSel2State();
}

class _LockerSel2State extends State<LockerSel2> {
  String dropdownValue = '1번 보관함';
  Stream stream;

  List<String> locker = ['1번 보관함', '2번 보관함'];

  @override
  void initState() {
    super.initState();

    stream = FirebaseFirestore.instance.collection('locker').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<QuerySnapshot>(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.data == null) return new Text(""); // 이거 안넣어주면 오류남
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton(
                    value: dropdownValue,
                    elevation: 16,
                    style: TextStyle(color: Colors.black),
                    underline: Container(
                      height: 2,
                      color: snapshot.data.docs[locker.indexOf(dropdownValue)]
                                  .data()['state'] ==
                              '가능'
                          ? Colors.black
                          : Colors.red,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: locker.map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 22,
                            // color: snapshot
                            //             .data
                            //             .docs[
                            //                 locker.indexOf(dropdownValue)]
                            //             .data()['state'] ==
                            //         '가능'
                            //     ? Colors.black
                            //     : Colors.red,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: BorderSide(
                          // color: Colors.black,
                          ),
                    ),
                    onPressed: snapshot.data.docs[locker.indexOf(dropdownValue)]
                                .data()['state'] ==
                            '가능'
                        ? () {
                            FirebaseFirestore.instance
                                .collection("locker")
                                .doc(
                                    "${snapshot.data.docs[locker.indexOf(dropdownValue)].id}")
                                .update(
                              {"menu": widget.doc.id},
                            );
                            FirebaseFirestore.instance
                                .collection("locker")
                                .doc(
                                    "${snapshot.data.docs[locker.indexOf(dropdownValue)].id}")
                                .update(
                              {"state": '불가능'},
                            );
                            FirebaseFirestore.instance
                                .collection("order")
                                .doc("${widget.doc.id}")
                                .update(
                              {
                                "상태": snapshot
                                        .data
                                        .docs[locker.indexOf(dropdownValue)]
                                        .id +
                                    '번 보관함 사용중'
                              },
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Locker(
                                      snapshot.data
                                          .docs[locker.indexOf(dropdownValue)],
                                      widget.doc),
                                ));
                          }
                        : null,
                    color: snapshot.data.docs[locker.indexOf(dropdownValue)]
                                .data()['state'] ==
                            '가능'
                        ? Colors.black
                        : Colors.red,
                    textColor: Colors.white,
                    child: Text("선택 완료".toUpperCase(),
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  FloatingActionButton(onPressed: () {
                    FirebaseFirestore.instance
                        .collection("locker")
                        .doc("1")
                        .update(
                      {"state": '가능'},
                    );

                    FirebaseFirestore.instance
                        .collection("locker")
                        .doc("2")
                        .update(
                      {"state": '가능'},
                    );
                  }),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
