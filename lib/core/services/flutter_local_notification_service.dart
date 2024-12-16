import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FlutterLocalNotificationService {
  // create instance from flutter local notification
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  // initialization
  static Future init() async {
    InitializationSettings settings = const InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: DarwinInitializationSettings(),
    );
    await flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onDid,
      onDidReceiveBackgroundNotificationResponse: onDid,
    );
  }

  static void onDid(details) {}

  static Future showBasicNotification() async {
    NotificationDetails notificationDetails = const NotificationDetails(
      android: AndroidNotificationDetails(
        'id 1',
        'basic notification',
        priority: Priority.high,
        importance: Importance.max,
      ),
    );
    await flutterLocalNotificationsPlugin.show(
        0, 'Basic Notification', 'Body', notificationDetails);
  }
}
