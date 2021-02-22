import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/GoogleBackend.dart';
import 'package:flutter_app/screens/StepTracking.dart';
import 'package:flutter_app/screens/Weather.dart';
import 'Calendar.dart';

class HomeDesignFlow extends StatefulWidget {
  var index;
  String uid;
  HomeDesignFlow({this.index,this.uid});
  @override
  _HomeDesignFlowState createState() => _HomeDesignFlowState();
}

class _HomeDesignFlowState extends State<HomeDesignFlow> {
  int _page = 1;
 // KFDrawerController _drawerController;
  final windows=[
Calendar(),
StepTracker(),
WeatherStat(),
];
getuid() async{
  print("Hey this is uid "+widget.uid);
  var details=await getData(widget.uid);
  print("ATTENTION DATA IS HERE "+details.toString());
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuid();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: const Color(0xFF272525),
        child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xFF272525),
                ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                 // color: Colors.white,
                height: MediaQuery.of(context).size.height*0.03,
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Icon(Icons.west, size: 25,color: Colors.white),
                onPressed: (){
                  Navigator.pop(context);
                } ,
                  ),
                  ),
               SizedBox(height: 5),
                Container(
                  alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFFCFCFCF),
                        child: ClipOval(
                          child: SizedBox(
                            width: 60.0,
                            height: 60.0,
                            child: Image.network(
                              "https://firebasestorage.googleapis.com/v0/b/steptracker-4397a.appspot.com/o/Upload_pic.jpeg?alt=media&token=33227874-24b1-4856-9c84-eadda26aea41",
                              fit: BoxFit.fill,
                            )
                          ),
                        ),
                      ),
                      ),
                  SizedBox(height: 10),
                  Text("Battu Mohit",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(height: 5),
                  Text("mohitbattu2010@gmail.com",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white70),),
              ],
              ),
              ),
              Divider(color: Colors.white),
              SizedBox(height: 10),
              Container(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                Text(" Running is one of the best ways to keep",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height:10),
                Text(" fit, catch up with friends, or even enjoy",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height:5),
               // alignment: Alignment.topLeft,
                Text(" outdoors.",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height: 50),
                Text(" Details",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height:5),
                Container(
                           height:1.0,
                           width:110.0,
                           color:Colors.white,
                           ),
                SizedBox(height: 10),
                Row(
                children: [
                  Text(" Height",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(width: 4),
                  Text(": ",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("154 cms",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                ],
                ),
                SizedBox(height: 5),
                Row(
                children: [
                  Text(" Age",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(width: 4),
                  Text(": ",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("23",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                ],
                ),
                SizedBox(height:5),
                Row(
                children: [
                  Text(" Weight",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(width: 4),
                  Text(": ",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text(" 73 Kgs",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                ],
                ),
                   ],
                

                ), 
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.36),
               ListTile(
              tileColor: Colors.red[800],
              title: Row(
                children:[
                Text("Logout",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(width: MediaQuery.of(context).size.width*0.48),
                Icon(Icons.logout,size:25,color:Colors.white),
                ],
                ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                //TODO Write a logout Functionality.
                Navigator.pop(context);
              },
            ),

            ],
           
          ),
        )
      ),
      appBar: AppBar(
          automaticallyImplyLeading: true,
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
        body:windows[_page],
    );
  } 
}
