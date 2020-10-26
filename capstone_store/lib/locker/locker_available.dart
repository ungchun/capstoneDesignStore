import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LockerAva extends StatefulWidget {
  String inputstring;
  LockerAva(this.inputstring);

  @override
  _LockerAvaState createState() => _LockerAvaState();
}

class _LockerAvaState extends State<LockerAva> {
  var sat;
  Stream stream;
  @override
  void initState() {
    super.initState();

    sat = widget.inputstring;

    stream = FirebaseFirestore.instance.collection('locker').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    if (sat == '1번 보관함') {
      return Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: stream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.data == null) return Text("");
            return Text(
                '이 보관함은 현재 사용 ${snapshot.data.docs[0].data()['state']} 합니다.');
          },
        ),
      );
    } else if (sat == '2번 보관함') {
      return Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: stream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.data == null) return Text("");
            return Text(
                '이 보관함은 현재 사용 ${snapshot.data.docs[1].data()['state']} 합니다.');
          },
        ),
      );
    } else {
      return Text('data');
    }
  }
}
