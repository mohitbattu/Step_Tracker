import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/NavigationScreen.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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
 // email=await gettingData();
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
  runApp(Welcome());
}
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String email;
  
Future<void> getEmail() async{
    var prefs= await _prefs;
    String em=prefs.getString('email');
    setState(() {
      email=em;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getEmail();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: 'Step Tracker',
          theme: ThemeData(primaryColor: Colors.black,scaffoldBackgroundColor: Colors.black,unselectedWidgetColor: Colors.white,
          pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }
    ),
          ),
          home: email==null ? Basescreen():NavigationBar()
          );
  }
}