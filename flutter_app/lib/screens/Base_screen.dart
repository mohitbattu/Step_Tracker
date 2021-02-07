import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Login_secnd.dart';

class Basescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Step Tracker",
      home: Scaffold(
        body: Container(
          
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Images/treadmill-workout-1549447999.jpg"),// TODO can be simplified 
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new TextButton(
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 80.0,
                  child: Column(
                    children: <Widget> [

                      Text("\n\n\n\nWelcome to Step Tracker\n",style: TextStyle(fontFamily: 'Lora',fontSize: 13.0, fontWeight: FontWeight.bold,color: Colors.black)
                      ),

                      Text("Tap to Continue\n",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),),

                    ],
                  ),
                ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
        ),
              

                /*Positioned(
                  child: TextButton(
                    child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 25.0,
                  backgroundImage: AssetImage('Images/Running.jpg'),
                  ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                  ),
                  bottom: 340,
                  right: 163,
                ),*/

            ],
          ),
          ),
           
      ),
      );
  }
}


