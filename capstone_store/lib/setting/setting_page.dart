import 'package:capstone_store/setting/alarm_setting_page.dart';
import 'package:capstone_store/setting/information_page.dart';
import 'package:capstone_store/setting/notice_page.dart';
import 'package:capstone_store/setting/service_center_page.dart';
import 'package:flutter/material.dart';

class Setting_Page extends StatefulWidget {
  @override
  _Setting_PageState createState() => _Setting_PageState();
}

class _Setting_PageState extends State<Setting_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '설정',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 1,
              color: Colors.grey[250],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 3, 10, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.notifications),
                  Text('공지사항', style: TextStyle(fontSize: 20)),
                  Padding(
                    padding: EdgeInsets.only(left: 177),
                    child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notice_Page()));
                        }),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: 40,
              endIndent: 40,
              color: Colors.grey[250],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 3, 10, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.error_outline),
                  Text('정보', style: TextStyle(fontSize: 20)),
                  Padding(
                    padding: EdgeInsets.only(left: 215),
                    child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Information_Page()));
                        }),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: 40,
              endIndent: 40,
              color: Colors.grey[250],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 3, 10, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add_alert),
                  Text('알림', style: TextStyle(fontSize: 20)),
                  Padding(
                    padding: EdgeInsets.only(left: 215),
                    child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Alarm_Page()));
                        }),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: 40,
              endIndent: 40,
              color: Colors.grey[250],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 3, 10, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.help_outline),
                  Text(
                    '고객센터',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 177),
                    child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Service_Page()));
                        }),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[250],
            ),
          ],
        ),
      ),
    );
  }
}
