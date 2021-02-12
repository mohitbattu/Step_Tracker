import 'package:flutter/material.dart';
import 'package:flutter_app/screens/HomeDesignFlow.dart';

class NavigationBar extends StatefulWidget {
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
            HomeDesignFlow(),
            Text('I am in PageView'),
            ]
            ),
        ),
      );

  }
}



