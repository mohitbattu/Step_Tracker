import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/NavigationScreen.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/Base_screen.dart';
import 'package:flutter_app/Backend_models/Notifications.dart';
import 'package:firebase_core/firebase_core.dart';
final FlutterLocalNotificationsPlugin flutterLocalNotifications=FlutterLocalNotificationsPlugin();
String messageTitle = "Empty";
String notificationAlert = "alert";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var settingPushNotificationAndorid=AndroidInitializationSettings('app_icon');
  await Firebase.initializeApp();
  await Permission.notification.request();
  var prefs = await SharedPreferences.getInstance();
  var email=prefs.getString('email');
  var settingInitial = InitializationSettings(android: settingPushNotificationAndorid);
  await flutterLocalNotifications.getNotificationAppLaunchDetails();
  await flutterLocalNotifications.initialize(settingInitial,
      onSelectNotification: (String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
  });
  
  FirebaseMessaging _fireMsg = FirebaseMessaging();
  _fireMsg.configure(
      onMessage: (message) async{
          messageTitle = message["notification"]["title"];
          notificationAlert = "New Notification Alert";
      },
      onResume: (message) async{
          messageTitle = message["data"]["title"];
          notificationAlert = "Application opened from Notification";
      },
      onLaunch: (message) async{
          messageTitle = message["data"]["title"];
          notificationAlert = "User gets Notified when Launching this App";
      },
    );
  await scheduleDailySixAMNotification("Hey Buddy","Grab your Shoes and Run!!");
  runApp(MaterialApp(
    title: 'Step Tracker',
    theme: ThemeData(primaryColor: Colors.black,scaffoldBackgroundColor: Colors.black,unselectedWidgetColor: Colors.white),
    home: email==null ? Basescreen():NavigationBar()));
}
