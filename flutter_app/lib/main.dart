import 'package:flutter/material.dart';
import 'screens/Base_screen.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Welcome());
}
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Step Tracker',
      theme: ThemeData(primaryColor: Colors.black,scaffoldBackgroundColor: Colors.black,unselectedWidgetColor: Colors.white),

      home: Basescreen(),


    );
  }
}