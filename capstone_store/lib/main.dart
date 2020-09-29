import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("주문목록"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ㅁㅁ"),
          Text("ㅁㅁ"),
          Text("ㅁㅁ"),
          Text("ㅁㅁ"),
          Text("ㅁㅁ"),
          Text("ㅁㅁ"),
          Text("ㅁㅁ"),
          Row(
            children: [
              Container(
                child: Text(
                  "안녕",
                  style: TextStyle(color: Colors.red, fontSize: 50),
                ),
              ),
              Container(child: Text("김성훈입니다")),
            ],
          ),
          Text("ㅁㅁ"),
        ],
      ),
    );
  }
}
