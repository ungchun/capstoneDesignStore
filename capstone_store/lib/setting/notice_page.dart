import 'package:capstone_store/size_config.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '공지사항',
            style: TextStyle(fontSize: getProportionateScreenWidth(25)),
          ),
        ),
        body: Text('helo'));
  }
}
