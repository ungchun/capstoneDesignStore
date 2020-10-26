import 'package:capstone_store/locker/locker1.dart';
import 'package:capstone_store/locker/locker2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LockerPage extends StatefulWidget {
  String inputstring;
  LockerPage(this.inputstring);

  @override
  _LockerPageState createState() => _LockerPageState();
}

class _LockerPageState extends State<LockerPage> {
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
      return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
          stream: stream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.data == null) return Text("");
            return Locker1(snapshot.data.docs[0]);
          },
        ),
      );
    }

    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.data == null) return Text("");
          return Locker2(snapshot.data.docs[1]);
        },
      ),
    );
  }
}
