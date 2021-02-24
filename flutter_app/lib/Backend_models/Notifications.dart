import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as timezone;
import 'package:timezone/data/latest.dart' as timezone;
Future<void> scheduleDailySixAMNotification(String title,String body) async {
  FlutterLocalNotificationsPlugin flutterLocalNotifications=FlutterLocalNotificationsPlugin();
  await _configureLocalTimeZone();
    await flutterLocalNotifications.zonedSchedule(
        0,
        title,
        body,
        everDaySixAm(),
        const NotificationDetails(
          android: AndroidNotificationDetails(
              'daily_notif',
              'daily_notif',
              'Channel for daily notification',
              icon: 'app_icon',
              playSound: true,
              enableVibration: true,
              largeIcon: DrawableResourceAndroidBitmap('ic_launcher'),
              sound: RawResourceAndroidNotificationSound('notification'),),
        ),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time);
  }
 
Future<void> _configureLocalTimeZone() async {
  const MethodChannel platform =MethodChannel('example.dev/flutter_app');
  print(platform);
  timezone.initializeTimeZones();
  final String timeZoneName = await platform.invokeMethod('getTimeZoneName');
  timezone.setLocalLocation(timezone.getLocation(timeZoneName));
}
 timezone.TZDateTime everDaySixAm() {
   print('HEY');
    final timezone.TZDateTime now = timezone.TZDateTime.now(timezone.local);
    print(now);
    timezone.TZDateTime scheduledDate =
        timezone.TZDateTime(timezone.local, now.year, now.month, now.day, 6);
    print(scheduledDate);
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }

    Future <void> showNotification(String title,String body) async {
    FlutterLocalNotificationsPlugin flutterLocalNotifications=FlutterLocalNotificationsPlugin();
    const AndroidNotificationDetails androidPlatformChannelSpecifics =AndroidNotificationDetails(
      'show_notif',
      'show_notif',
      'Channel for showing notification',
      playSound: true,
      enableVibration: true,
      icon: 'app_icon',
      largeIcon: DrawableResourceAndroidBitmap('ic_launcher'),
      sound: RawResourceAndroidNotificationSound('notification')
      );
    
    const NotificationDetails platformChannelSpecifics =NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotifications.show(0,title,body, platformChannelSpecifics,payload: 'item x');
  }

