import 'package:flutter/material.dart';
import 'package:flutter_app/screens/HomeDesignFlow.dart';
import 'package:flutter_app/screens/Statistics.dart';

class NavigationBar extends StatefulWidget {
   String uid;
  NavigationBar({this.uid});
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
   PageController pages = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
          backgroundColor: const Color(0xFF272525),
        body: PageView(
          controller: pages,
          children:[
            HomeDesignFlow(index: pages,uid: widget.uid),
            Statistics(),//TODO Create the Statistics of the Everyday steps.
            ]
            ),
        ),
      );
  }
}



