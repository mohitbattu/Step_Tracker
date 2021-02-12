import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Login_secnd.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_app/screens/StepTracker.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
   int _page = 0;
  final windows= [
    //TODO Write Down all the screens here in the same format as below.
    Text('I am first'),
    StepTracker(),
    Text('I am three'),
  ];
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      backgroundColor: const Color(0xFF272525),
        bottomNavigationBar: CurvedNavigationBar(
          color: const Color(0xFF000000),
          backgroundColor: const Color(0xFF272525),
          buttonBackgroundColor: const Color(0xFF000000),
          height: 48,
          index: 1,
          animationCurve: Curves.fastLinearToSlowEaseIn,
          items: <Widget>[
          Icon(Icons.calendar_today_outlined, size: 20,color: Colors.white),
          Image.asset("Images/Logo.jpg",height: MediaQuery.of(context).size.height*0.05),
          Icon(Icons.wb_sunny,size: 20,color: Colors.white),
         //Icon(Icons.trending_up_outlined,size: 12,color: Colors.white),
        ],
        onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        
    body: windows[_page],
    );
  }
}



