import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/HomeDesignFlow.dart';
import 'package:flutter_app/screens/Statistics.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  String userid;
  Connectivity netcheck = Connectivity();
  DateTime backbuttonpressedTime;
   PageController pages = PageController(initialPage: 0);
    getUID() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
     setState(() {
       userid=prefs.getString('uid');
     });
    }
    @override
  void didChangeDependencies() async{
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    await getUID();
  }
   Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();

    //bifbackbuttonhasnotbeenpreedOrToasthasbeenclosed
    //Statement 1 Or statement2
    bool backButton = backbuttonpressedTime == null || currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);

    if (backButton) {
      backbuttonpressedTime = currentTime;
      Fluttertoast.showToast(
          msg: "Double Click to exit app",
          backgroundColor: Colors.black,
          textColor: Colors.white);
      return false;
    }
    return true;
  }
    @override
    void initState() { 
      super.initState();
      getUID();
    }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
          child: MaterialApp(
         home: Scaffold(
            backgroundColor: const Color(0xFF272525),
          body: PageView(
            controller: pages,
            children:[
              HomeDesignFlow(index: pages),
              Statistics(),//TODO Create the Statistics of the Everyday steps.
              ]
              ),
          ),
        ),
    );
  }
}



