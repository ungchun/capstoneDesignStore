import 'package:flutter/material.dart';

class Notice_Page extends StatefulWidget {
  @override
  _Notice_PageState createState() => _Notice_PageState();
}

class _Notice_PageState extends State<Notice_Page> {
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
