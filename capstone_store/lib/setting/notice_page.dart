import 'package:flutter/material.dart';

class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '공지사항',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('man'),
            )
          ],
        ));
  }
}
