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
        title: Text('설정'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                child:
                    IconButton(icon: Icon(Icons.account_box), onPressed: null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
