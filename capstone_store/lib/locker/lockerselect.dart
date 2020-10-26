import 'package:capstone_store/locker/locker_available.dart';
import 'package:flutter/material.dart';

import 'locker_page.dart';

class LockerSelect extends StatefulWidget {
  @override
  _LockerSelectState createState() => _LockerSelectState();
}

class _LockerSelectState extends State<LockerSelect> {
  String dropdownValue = '번 보관함';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton(
                value: dropdownValue,
                elevation: 16,
                style: TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.black,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                    LockerAva(dropdownValue);
                  });
                },
                items:
                    ['1번 보관함', '2번 보관함'].map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 22),
                    ),
                  );
                }).toList(),
              ),
              LockerAva(dropdownValue),
            ],
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LockerPage(dropdownValue)));
                },
                color: Colors.black,
                textColor: Colors.white,
                child:
                    Text("선택 완료".toUpperCase(), style: TextStyle(fontSize: 20)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
