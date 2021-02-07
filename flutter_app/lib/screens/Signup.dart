import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/screens/User_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/Backend_models/firebase.dart';
import 'package:flutter_app/screens/widgets.dart';
import 'package:validators/validators.dart' as validator;
import 'package:flutter_app/Backend_models/signback.dart';
import 'package:flutter_app/Backend_models/signresult.dart';

void main() async{
await Firebase.initializeApp();
}
class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  TextEditingController _selectedGenderController = TextEditingController();
  
  final auth = FirebaseAuth.instance;
  
  

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    Signbackend model = Signbackend();
    return Form(
      key: _formKey,
      child: Scaffold(
      backgroundColor: const Color(0xFF272525),
        appBar: AppBar(
        title: Text("Signup Form"),
        centerTitle: true,
        toolbarHeight: 60.2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        backgroundColor: Colors.black,
        elevation: 50.0,
      ),
      body: SafeArea(
              child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  SizedBox(height:50),
                  Container(
                    child: Text("Join the Club",
                    style: TextStyle(fontFamily: 'Lora',fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.white) ),
                    ),
                  SizedBox(height:30),
                  Container(child: 
                  Text("The Ultimate fitness step tracker app",
                  style: TextStyle(fontFamily: 'Lora',fontSize: 13.0, fontWeight: FontWeight.bold,color: Colors.white),
                  ),),
                  SizedBox(height: 40),
                  Container(
                    width: MediaQuery.of(context).size.width*0.93,
                      child: TextFormField(
                        controller: _fullNameController,
                        
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        decoration: InputDecoration(
                          /*hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white)*/
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
                          ),
                          icon: Icon(Icons.account_circle,color: Colors.white,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: "FullName",labelStyle: TextStyle(color: Colors.white),
                        ),
                        validator: (String value) {
                        if (value.isEmpty && value.length<2) {
                  return 'Please provide your full Name';
                  }
                  return null;
                    },
                    onSaved: (String value){
                      model.fullname = value;
                    },
                      ),
                    ),
                    SizedBox(height:15),
                  Container(
                    width: MediaQuery.of(context).size.width*0.93,
                    child: TextFormField(
                      controller: _emailInputController,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(125.0)),
                        ),
                        icon: Icon(Icons.attach_email_rounded,color: Colors.white,),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow)// Focused border changes the light when clicked.
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Email",labelStyle: TextStyle(color: Colors.white),
                      ),
                      validator: (String value) {
                        if (!validator.isEmail(value)) {
                  return 'Please provide the valid email';
                  }
                  return null;
                    },
                    onSaved: (String value){
                      model.email = value;
                    },
                    ),
                  ),
                  SizedBox(height:15),
                  Container(
                    width: MediaQuery.of(context).size.width*0.93,
                      child: TextFormField(
                        controller: _passwordInputController,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          /*hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white)*/
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
                          ),
                          icon: Icon(Icons.lock,color: Colors.white,),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: "Password",labelStyle: TextStyle(color: Colors.white),
                        ),
                    validator: (String value) {
                        if (value.length < 5) {
                  return 'Password should be minimum 5 characters';
                  }
                  else if(value.isEmpty){
                    return 'Please fill the password';
                  }
                  return null;
                    },
                    onSaved: (String value){
                      model.password = value;
                    },
                      ),
                    ),
                    SizedBox(height:20),
                    Container(
                      width: MediaQuery.of(context).size.width*0.93,
                      child: Text("Gender",style: new TextStyle(fontFamily: 'Lora',fontSize: 16.0,
                          fontWeight: FontWeight.bold, color: Colors.white),),
                    ),
                    SizedBox(height:10),
                    GenderSelector(model: _selectedGenderController),
                    SizedBox(height:40),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.width*0.1,// TODO Push should be modified for the next page.
                     child:MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Colors.red[900],
              child: Text('Next',style: new TextStyle(fontFamily: 'Montserrat',fontSize: 16.0,
                          fontWeight: FontWeight.bold, color: Colors.white)),
              onPressed: () async{
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                   await signUpSetup(_fullNameController.text,_emailInputController.text,_selectedGenderController.text);
                   await auth.createUserWithEmailAndPassword(email: _emailInputController.text,password: _passwordInputController.text,);
                   Navigator.push(context, MaterialPageRoute(builder:(context) => userData()));
                }
              },
              /*style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  padding: EdgeInsets.symmetric(horizontal: 120,vertical: 11),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),*/
),
                     ),
                  SizedBox(height:10),
                  Container(
                    child: Text("By continuing, you agree to accept our terms and conditions",
                  style: TextStyle(fontFamily: 'Lora',fontSize: 8.0, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  ),
                  /*
                  SizedBox(height: 10),
                  Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                           height:1.0,
                           width:160.0,
                           color:Colors.white,
                           ),
                           SizedBox(width: 50),
                           Container(
                  height:1.0,
                  width:160.0,
                  color:Colors.white,),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                  child: Text("or",
                  style: TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                    )*/
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}