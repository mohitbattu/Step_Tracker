import 'package:flutter/material.dart';

class Base extends StatelessWidget {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                radius: 70.0,
                  child: Column(
                      children: <Widget> [

                        Text("\n\n\n\nWelcome to Step Tracker\n",style: TextStyle(fontFamily: 'Lora',fontSize: 11.0, fontWeight: FontWeight.bold,color: Colors.black)
                        ),


                         Text("Tap Here\n",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),),

          ],
          ),
          ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}



void main() {
  runApp(Base());
}
