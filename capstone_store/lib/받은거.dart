// import 'package:capstone_customer/myinfo/myinfoAppSet.dart';
// import 'package:capstone_customer/myinfo/myinfoNotice.dart';
// import 'package:capstone_customer/myinfo/myinfoUseGuide.dart';
// import 'package:flutter/material.dart';

// class MyinfoWidget extends StatefulWidget {
//   @override
//   _MyinfoWidgetState createState() => _MyinfoWidgetState();
// }

// class _MyinfoWidgetState extends State<MyinfoWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text(
//           '내정보',
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 40),
//               child: Center(
//                 child: IconButton(
//                   icon: Icon(Icons.account_circle),
//                   color: Colors.black,
//                   iconSize: 100,
//                   onPressed: () {},
//                 ),
//               ),
//             ),
//             Center(
//               child: Container(
//                 child: Text(
//                   "김성훈",
//                   style: TextStyle(fontSize: 30),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: Center(
//                 child: Container(
//                   child: Text(
//                     "계명대학교",
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 3),
//               child: Center(
//                 child: Container(
//                   child: Text(
//                     "5414030",
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 30.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.notifications_none),
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => MyinfoNotice()));
//                         },
//                       ),
//                       Text("공지사항"),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.check_circle),
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => MyinfoUseGuide()));
//                         },
//                       ),
//                       Text("이용안내"),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.settings),
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => MyinfoAppSet()));
//                         },
//                       ),
//                       Text("App 설정"),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 30.0),
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(60, 10, 10, 0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("고객센터"),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 35.0),
//                       child: IconButton(
//                         icon: Icon(Icons.keyboard_arrow_right),
//                         onPressed: () {},
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 0.0),
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(60, 10, 10, 0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("약관확인"),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 35.0),
//                       child: IconButton(
//                         icon: Icon(Icons.keyboard_arrow_right),
//                         onPressed: () {},
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 0.0),
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(60, 10, 10, 0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("기타"),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 35.0),
//                       child: IconButton(
//                         icon: Icon(Icons.keyboard_arrow_right),
//                         onPressed: () {},
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
