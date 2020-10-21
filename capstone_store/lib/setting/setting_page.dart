import 'package:capstone_store/setting/alarm_setting_page.dart';
import 'package:capstone_store/setting/information_page.dart';
import 'package:capstone_store/setting/notice_page.dart';
import 'package:capstone_store/setting/service_center_page.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
              padding: EdgeInsets.fromLTRB(40, 3, 10, 3),
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
                                  builder: (context) => NoticePage()));
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
              padding: EdgeInsets.fromLTRB(40, 3, 10, 3),
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
                                  builder: (context) => InformationPage()));
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
              padding: EdgeInsets.fromLTRB(40, 3, 10, 3),
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
                                  builder: (context) => AlarmPage()));
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
              padding: EdgeInsets.fromLTRB(40, 3, 10, 3),
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
                                  builder: (context) => ServicePage()));
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
