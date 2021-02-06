import 'package:flutter/material.dart';
import 'package:flutter_app/screens/account_created.dart';
class userData extends StatefulWidget {
  @override
  _userDataState createState() => _userDataState();
}

class _userDataState extends State<userData> {
  String _weight,_height,_age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF272525),
      appBar: AppBar(
        title: Text("User Data"),
        centerTitle: true,
        toolbarHeight: 60.2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        backgroundColor: Colors.black,
        elevation: 50.0,
      ),
      body: ListView(
        children:[
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                        left: 45,
                        top: 20,
                        right: 40,
                        bottom: 0
                    ),
                    child: Text("Basic Information",style: TextStyle(fontFamily: 'Lora',fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 45,
                        top: 45,
                        right: 40,
                        bottom: 0
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Kgs',
                        hintStyle: TextStyle(fontSize: 8,color: Colors.white),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink)
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Weight",labelStyle: TextStyle(fontSize: 16,color: Colors.white),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _weight = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 45,
                        top: 45,
                        right: 40,
                        bottom: 0
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Feets',
                        hintStyle: TextStyle(fontSize: 8,color: Colors.white),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink)
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Height",labelStyle: TextStyle(fontSize: 16,color: Colors.white),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _height = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 45,
                        top: 45,
                        right: 40,
                        bottom: 0
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Years',
                        hintStyle: TextStyle(fontSize: 8,color: Colors.white),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink)
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Age",labelStyle: TextStyle(fontSize: 16,color: Colors.white),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _age = value;
                        });
                      },
                    ),
                  ),
        Padding(
              padding: const EdgeInsets.only(
                  left: 45,
                  top: 70,
                  right: 50,
                  bottom: 0
              ),
            child:ElevatedButton(
            child: Text('Join us',style: new TextStyle(fontFamily: 'Montserrat',fontSize: 16.0,
                        fontWeight: FontWeight.bold, color: Colors.white)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => accountCreated()));
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
                 ),
                   ),
              ],
              ),
            ],
          )
        ],
      )
      
    );
  }
}