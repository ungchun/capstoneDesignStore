import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:capstone_store/tap_state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tap_Page(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   // firestore 데이터 읽어오기 test
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   void test() {
//     String title = "";
//     firestore.collection("test").doc("1").get().then((DocumentSnapshot ds) {
//       title = ds.data()['name'];
//       print("asd " + title);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("주문목록"),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               test();
//             },
//           ),
//           Text("ㅁㅁ"),
//           Text("ㅁㅁ"),
//           Text("ㅁㅁ"),
//           Text("ㅁㅁ"),
//           Text("ㅁㅁ"),
//           Text("ㅁㅁ"),
//           Text("ㅁㅁ"),
//           Row(
//             children: [
//               Container(
//                 child: Text(
//                   "안녕",
//                   style: TextStyle(color: Colors.red, fontSize: 50),
//                 ),
//               ),
//               Container(child: Text("김성훈입니다")),
//             ],
//           ),
//           Text("ㅁㅁ"),
//         ],
//       ),
//     );
//   }
// }
