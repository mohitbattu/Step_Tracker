import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/StepTracking.dart';

class HomeDesignFlow extends StatefulWidget {
  var index;
  HomeDesignFlow({this.index});
  @override
  _HomeDesignFlowState createState() => _HomeDesignFlowState();
}

class _HomeDesignFlowState extends State<HomeDesignFlow> {
  int _page = 1;
  final windows=[
Text('Hey'),
StepTracker(),
Text('I am die'),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
          title: Text("Step Tracker",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          toolbarHeight: 60.2,
          backgroundColor: Colors.black,
          elevation: 50.0,
          actions: [
              //SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.analytics_rounded, size: 25,color: Colors.white),
              onPressed: (){
                var pages=widget.index;
                pages.animateToPage(2,duration:Duration(milliseconds: 250),curve: Curves.bounceInOut);
              } ,
                ),


          ],
        ),
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
