import 'package:capstone_store/order/order_page.dart';
import 'package:capstone_store/store/store_page.dart';
import 'package:flutter/material.dart';

import 'setting/setting_page.dart';

class Tap_Page extends StatefulWidget {
  @override
  _Tap_PageState createState() => _Tap_PageState();
}

class _Tap_PageState extends State<Tap_Page> {
  int _selectedIndex = 0;

  List _pages = [Store_Page(), Order_Page(), Setting_Page()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.cyan,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted),
                title: Text(
                  'Order List',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
          ]),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
