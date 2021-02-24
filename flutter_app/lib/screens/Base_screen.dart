import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/Notifications.dart';
import 'package:flutter_app/Backend_models/loading/loader.dart';
import 'package:flutter_app/Backend_models/loading/loading.dart';
import 'package:flutter_app/screens/Login_secnd.dart';
class Basescreen extends StatefulWidget {
  @override
  _BasescreenState createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  bool isloading = false;
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  @override
  Widget build(BuildContext context) {
    return isloading ? Loading(): MaterialApp(
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
              MaterialButton(
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[900],
                  radius: 80.0,
                  child: Column(
                    children: <Widget> [
                      SizedBox(height:10),
                      Image.asset("Images/Logo.jpg",height: MediaQuery.of(context).size.height*0.05),
                      SizedBox(height: 20),
                      Text("Welcome to Step Tracker",style: TextStyle(fontFamily: 'Lora',fontSize: 13.0, fontWeight: FontWeight.bold,color: Colors.white)
                      ),
                      
                      SizedBox(height:10),
                      Text("Tap to Continue",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                     
                    ],

                  ),
                ),
                elevation: 50,
                focusElevation: 50,
                //hoverElevation: 5000,
                highlightElevation: 5,
                  onPressed: (){
                    showNotification('Step tracker','Welcome to the Ultimate Fitness Step Tracking App');
                    setState(()=> isloading=true);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    setState(()=> isloading=false);
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



