import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Step Tracker",
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/treadmill-workout-1549447999.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[

              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 70.0,
                  child: Column(
                    children: <Widget> [

                      Text("\n\n\nWelcome to Step Tracker\n",style: TextStyle(fontFamily: 'Lora',fontSize: 11.0, fontWeight: FontWeight.bold,color: Colors.black)
                      ),

                      Text("Tap Here\n",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),),

                    ],
                  ),
                ),
              ),
              Positioned(
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 25.0,
                  backgroundImage: AssetImage('Images/Running.jpg'),

                ),
                bottom: 345,
                right: 168,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


