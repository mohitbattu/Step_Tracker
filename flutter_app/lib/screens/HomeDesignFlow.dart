import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class HomeDesignFlow extends StatefulWidget {
  
  @override
  _HomeDesignFlowState createState() => _HomeDesignFlowState();
}

class _HomeDesignFlowState extends State<HomeDesignFlow> {
  int _page = 0;
  final windows=[
Text('Hey'),
Text('Bye'),
Text('I am die'),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      backgroundColor: const Color(0xFF272525),
        body: windows[_page],
    );
  } 
}
