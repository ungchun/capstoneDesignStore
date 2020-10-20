import 'package:capstone_store/order/breakdown_form.dart';
import 'package:flutter/material.dart';

class GestureDetectorButton extends StatefulWidget {
  @override
  _GestureDetectorButtonState createState() => _GestureDetectorButtonState();
}

class _GestureDetectorButtonState extends State<GestureDetectorButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tap');
      },
      child: Container(
        padding: EdgeInsets.all(5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.list,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => null));
                  })
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
