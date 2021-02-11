
import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/Userdatabackpart/userback.dart';
import 'package:flutter_app/Backend_models/firebase.dart';
import 'package:flutter_app/Backend_models/loading/loading.dart';
import 'package:flutter_app/screens/account_created.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: must_be_immutable
class UserData extends StatefulWidget {
  var name,email,gender;
  UserData({this.name,this.email,this.gender});
  @override
  _UserDataState createState() => _UserDataState();
}
class _UserDataState extends State<UserData> {
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
   bool isloading = false;
   File _uploadedimage;
   Future takeImage() async {
      // ignore: deprecated_member_use
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);
      setState(() {
        _uploadedimage = image;
          //print('Image Path $_uploadedimage');
      });
    }
  uploadImage(String uid) async {
      Reference reference = FirebaseStorage.instance.ref("user_profile").child(uid);
      await reference.putFile(_uploadedimage);
      print("Image Added");
      String imageLocation = 'user_profile/$uid.jpg';
      //String imgUrl = await FirebaseStorage.instance.ref().child('user_profile/$uid').getDownloadURL();
      return imageLocation;
  }
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Userbackend model = Userbackend();

     
    return isloading ? Loading(): Form(
      key: _formKey,
          child: Scaffold(
        backgroundColor: const Color(0xFF272525),
        appBar: AppBar(
          title: Text("User Data"),
          centerTitle: true,
          toolbarHeight: 60.2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          backgroundColor: Colors.black,
          elevation: 50.0,
        ),
        body: SafeArea(
                  child: SingleChildScrollView(
            child:Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height:10),
                      Container(
                          child: Text("Basic Information",style: TextStyle(fontFamily: 'Lora',fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                      children:[
                        SizedBox(width: 30),
                        
                          //color: Colors.white,
                          //width: MediaQuery.of(context).size.width*0.50,
                          Container(
                            //color: Colors.white,
                            //width: MediaQuery.of(context).size.width*0.55,
                            //height: MediaQuery.of(context).size.height*0.3,
                            child:
                      CircleAvatar(
                      radius: 100,
                      backgroundColor: Color(0xFFCFCFCF),
                      child: ClipOval(
                        child: SizedBox(
                          width: 180.0,
                          height: 180.0,
                          child: (_uploadedimage!=null)?Image.file(
                            _uploadedimage,
                            fit: BoxFit.fill,
                          ):Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/steptracker-4397a.appspot.com/o/Upload_pic.jpeg?alt=media&token=33227874-24b1-4856-9c84-eadda26aea41",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    ),
                    
                    //SizedBox(width:),
                    Container(
                      //color:Colors.white,
                      //alignment: Alignment.topLeft,
                      //width: MediaQuery.of(context).size.width*0.02,
                     child: 
                         IconButton(
                        icon: Icon(
                        FontAwesomeIcons.camera,
                        size: 25.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        takeImage();
                      },
                      ),
                  
                    ),
                    ],
                  ),
              ),
                      SizedBox(height:10),
                      Container(
                        //color: Colors.white,
                        width: MediaQuery.of(context).size.width*0.8,
                          child: TextFormField(
                            
                            controller: _weightController,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Kgs',
                              hintStyle: TextStyle(fontSize: 8,color: Colors.white),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                borderSide: BorderSide(color: Colors.pink)
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: "Weight",labelStyle: TextStyle(fontSize: 16,color: Colors.white),
                            ),
                 validator: (String value) {
                        if (value.isEmpty && value.length<2) {
                  return 'Please provide your weight';
                  }
                  return null;
                    },
                    onSaved: (String value){
                      model.weight = value;
                    },
                            
                          ),
                        ),
                        SizedBox(height:30),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: TextFormField(
                            controller: _heightController,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Centimeters',
                              hintStyle: TextStyle(fontSize: 8,color: Colors.white),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                borderSide: BorderSide(color: Colors.pink)
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: "Height",labelStyle: TextStyle(fontSize: 16,color: Colors.white),
                            ),
                            validator: (String value) {
                        if (value.isEmpty) {
                  return 'Please provide your height';
                  }
                  return null;
                    },
                    onSaved: (String value){
                      model.height = value;
                    },
                            
                          ),
                        ),
                        SizedBox(height:30),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: TextFormField(
                            controller: _ageController,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Years',
                              hintStyle: TextStyle(fontSize: 8,color: Colors.white),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                borderSide: BorderSide(color: Colors.pink)
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: "Age",labelStyle: TextStyle(fontSize: 16,color: Colors.white),
                            ),
                            validator: (String value) {
                        if (value.isEmpty ) {
                  return 'Please provide your age';
                  }
                  return null;
                    },
                    onSaved: (String value){
                      model.age = value;
                    },
                            
                          ),
                        ),
                  SizedBox(height:50),
              Container(
                  child:ElevatedButton(
                  child: Text('Join us',style: new TextStyle(fontFamily: 'Montserrat',fontSize: 16.0,
                              fontWeight: FontWeight.bold, color: Colors.white)),
                  onPressed: () async{
                    
                     if (_formKey.currentState.validate()) {
                       _formKey.currentState.save();
                       setState(()=> isloading=true);
                       String userid=await signUpSetup(widget.name.text,widget.email.text,widget.gender.text);
                       String imagelocation=await uploadImage(userid);
                       await userSetup(imagelocation,userid,_weightController.text,_heightController.text,_ageController.text);
                       Navigator.push(context, MaterialPageRoute(builder:(context) => accountCreated()));
                       setState(()=> isloading=false);
                     }
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
            ),
                  ),
          ),
        )
        
      );
  }
}