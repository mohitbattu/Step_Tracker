import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/loader.dart';
import 'package:flutter_app/Backend_models/loading.dart';
import 'package:flutter_app/screens/Login_secnd.dart';
class Basescreen extends StatefulWidget {
  @override
  _BasescreenState createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  bool isloading = false;
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
                child: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 80.0,
                  child: Column(
                    children: <Widget> [
                      SizedBox(height: 60),
                      Text("Welcome to Step Tracker",style: TextStyle(fontFamily: 'Lora',fontSize: 13.0, fontWeight: FontWeight.bold,color: Colors.black)
                      ),
                      
                      SizedBox(height:30),
                      Text("Tap to Continue",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black),),
                     
                    ],
                  ),
                ),
                  onPressed: (){
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



