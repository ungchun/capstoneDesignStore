import 'package:flutter/material.dart';

class Order_List extends StatefulWidget {
  @override
  _Order_ListState createState() => _Order_ListState();
}

class _Order_ListState extends State<Order_List> {
  final List<Map> _order_list = <Map>[];
  Map _order_name_count = Map<String,int>();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('List bar'), 
      ),
      body: _order_view(),
    );
  }
  
  Widget _buildList() {

  }

  Widget _order_view() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index.isOdd) return Divider();

        var realIndex = index ~/ 2;

      });
  }

  Widget _add_List() {
    _order_name_count = {'아메리카노':1,'아이스아메리카노':2};
  }
}