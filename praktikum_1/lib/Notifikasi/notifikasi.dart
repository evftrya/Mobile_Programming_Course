import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:praktikum_1/main.dart';

class Notifikasi {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static Future<void> onDidReceiveNotification(
      NotificationResponse notificationResponse) async {
    if (notificationResponse.payload != null) {
      String? payload = notificationResponse.payload;

      if (payload == 'second') {
        navKey.currentState?.pushNamed('/second');
      }
    }
  }

  static Future<void> init() async {
    const AndroidInitializationSettings AndInitSet =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings IOSinitSet =
        DarwinInitializationSettings();
    const InitializationSettings InitSet =
        InitializationSettings(android: AndInitSet);

    await flutterLocalNotificationsPlugin.initialize(InitSet,
        onDidReceiveBackgroundNotificationResponse: onDidReceiveNotification,
        onDidReceiveNotificationResponse: onDidReceiveNotification);
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }

  static Future<void> showNotification(
      {required String title,
      required String body,
      required String payload}) async {
    const NotificationDetails platformChannelSpesifics = NotificationDetails(
        android: AndroidNotificationDetails('channelId', 'channelName',
            importance: Importance.max, priority: Priority.high));

    await flutterLocalNotificationsPlugin
        .show(0, title, body, platformChannelSpesifics, payload: payload);
  }
}
