import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/Userdatabackpart/userback.dart';
import 'package:flutter_app/Backend_models/firebase.dart';
import 'package:flutter_app/screens/account_created.dart';


class UserData extends StatelessWidget {
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  var name,email,gender;
  UserData({this.name,this.email,this.gender});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Userbackend model = Userbackend();
    return Form(
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
                      SizedBox(height:300),
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
                              EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
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
                              hintText: 'Feets',
                              hintStyle: TextStyle(fontSize: 8,color: Colors.white),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
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
                              EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
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
                await userSetup(_weightController.text,_heightController.text,_ageController.text);
                await signUpSetup(name.text,email.text,gender.text);
                    Navigator.push(context, MaterialPageRoute(builder:(context) => accountCreated()));
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

/*class userData extends StatefulWidget {
  
  @override
  _userDataState createState() => _userDataState();
}

class _userDataState extends State<userData> {

  
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  var data;
  userDataState({this.data});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Userbackend model = Userbackend();
    return Form(
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
                      SizedBox(height:300),
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
                await userSetup(,_weightController.text,_heightController.text,_ageController.text);
                    Navigator.push(context, MaterialPageRoute(builder:(context) => accountCreated()));
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
  }*/