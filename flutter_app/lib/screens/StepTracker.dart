import 'package:flutter/material.dart';

class StepTracker extends StatefulWidget {
  @override
  _StepTrackerState createState() => _StepTrackerState();
}

class _StepTrackerState extends State<StepTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF272525),
      appBar: AppBar(
            automaticallyImplyLeading: false,
          title: Text('Step Tracker',style: TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.white)),
          leading: IconButton(
            icon: Icon(Icons.menu,color: Colors.white),
            onPressed: () {
              //TODO Write an action Button
            },
          ),
          centerTitle: true,
          toolbarHeight: 60.2,
          backgroundColor: Colors.black,
          elevation: 50.0,
          actions: [
            Row(
              children: [
                IconButton(
                  icon:Icon(
                Icons.logout,
                size: 30,
                color: Colors.white,
              ),
              onPressed: (){
                //TODO Give the Notifications
              } ,
                ),
              
              ],
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                
              ],
            ),
          )
        ),
    );
  }
}