import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Login_secnd.dart';
class accountCreated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.cancel_rounded),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()));
          },
        ),
      ),

      body: Container(
        child: Stack(children: <Widget>[
          Center(
          child: Image.asset('Images/Check.jpeg',scale: 0.1),),
          Padding(
              padding: const EdgeInsets.only(
                  left: 90,
                  top: 70,
                  right: 50,
                  bottom: 0
              ),
              child: Text("Account Created Successfully!",style: TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.white),
            ),
      ),
          ],
          ),
      ),
    );
  }
}