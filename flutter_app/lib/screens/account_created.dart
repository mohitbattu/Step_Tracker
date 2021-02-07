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

      body: SafeArea(
              child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              SizedBox(height: 20),
              Container(
                  child: Text("Account Created Successfully!",style: TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.white),
                ),
        ),
        SizedBox(height:125),
        Image.asset('Images/Check.jpeg',scale: 0.1),
              ],
              ),
          ),
        ),
      ),
    );
  }
}