import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NoticeAlarmPage extends StatefulWidget {
  NoticeAlarmPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _NoticeAlarmPageState createState() => _NoticeAlarmPageState();
}

class _NoticeAlarmPageState extends State<NoticeAlarmPage> {
  var _flutterLocalNotificationsPlugin;

  void initState() {
    // TODO: implement initState
    super.initState();
    var initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = IOSInitializationSettings();

    var initializationSettings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);

    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }

  Future<void> onSelectNotification(String payload) async {
    debugPrint("$payload");
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text('Notification Payload'),
              content: Text('Payload: $payload'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: _showNotification,
              child: Text('Show Notification'),
            ),
            RaisedButton(
              onPressed: _dailyAtTimeNotification,
              child: Text('Daily At Time Notification'),
            ),
            RaisedButton(
              onPressed: _repeatNotification,
              child: Text('Repeat Notification'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> _showNotification() async {
    var android = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.Max, priority: Priority.High);

    var ios = IOSNotificationDetails();
    var detail = NotificationDetails(android, ios);

    await _flutterLocalNotificationsPlugin.show(
      0,
      '단일 Notification',
      '단일 Notification 내용',
      detail,
      payload: 'Hello Flutter',
    );
  }

  Future<void> _dailyAtTimeNotification() async {
    var time = Time(22, 40, 0);
    var android = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.Max, priority: Priority.High);

    var ios = IOSNotificationDetails();
    var detail = NotificationDetails(android, ios);

    await _flutterLocalNotificationsPlugin.showDailyAtTime(
      0,
      '매일 똑같은 시간의 Notification',
      '매일 똑같은 시간의 Notification 내용',
      time,
      detail,
      payload: 'Hello Flutter',
    );
  }

  Future<void> _repeatNotification() async {
    var android = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.Max, priority: Priority.High);

    var ios = IOSNotificationDetails();
    var detail = NotificationDetails(android, ios);

    await _flutterLocalNotificationsPlugin.periodicallyShow(
      0,
      '반복 Notification',
      '반복 Notification 내용',
      RepeatInterval.EveryMinute,
      detail,
      payload: 'Hello Flutter',
    );
  }
}
