import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/Backend_models/Facebook.dart';
import 'package:flutter_app/Backend_models/GoogleBackend.dart';
import 'package:flutter_app/Backend_models/loading/loading.dart';
import 'package:flutter_app/Backend_models/widgets.dart';
import 'package:flutter_app/screens/User_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:validators/validators.dart' as validator;
import 'package:flutter_app/Backend_models/signbackpart/signback.dart';

import 'Login_secnd.dart';
import 'NavigationScreen.dart';

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
  bool isloading = false;
    final auth = FirebaseAuth.instance;
  
  
    final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Signbackend model = Signbackend();
    return isloading ? Loading() :Form(
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
                          hintText: 'Tony Stark',
                          hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
                          ),
                          icon: Icon(Icons.account_circle,color: Colors.white,),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
                            borderSide: BorderSide(color: Colors.pink)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
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
                    SizedBox(height:25),
                  Container(
                    width: MediaQuery.of(context).size.width*0.93,
                    child: TextFormField(
                      controller: _emailInputController,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'xyz@yahoo.com',
                        hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(125.0)),
                        ),
                        icon: Icon(Icons.attach_email_rounded,color: Colors.white,),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(125.0)),
                            borderSide: BorderSide(color: Colors.yellow)// Focused border changes the light when clicked.
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(125.0)),
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
                  SizedBox(height:25),
                  Container(
                    width: MediaQuery.of(context).size.width*0.93,
                      child: TextFormField(
                        controller: _passwordInputController,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'password123',
                          hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
                          ),
                          icon: Icon(Icons.lock,color: Colors.white,),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
                            borderSide: BorderSide(color: Colors.greenAccent)
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(125.0)),
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
                    SizedBox(height:30),
                    Container(
                      width: MediaQuery.of(context).size.width*0.95,
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
              child:Text('Next',style: new TextStyle(fontFamily: 'Montserrat',fontSize: 16.0,
                          fontWeight: FontWeight.bold, color: Colors.white)),
                          
              
              onPressed: () async{
                
              if (_formKey.currentState.validate()) {
                
                _formKey.currentState.save();
                setState(()=> isloading=true);
                //setState(() {
                try{
                await auth.createUserWithEmailAndPassword(email: _emailInputController.text,password: _passwordInputController.text,).then((_){
Navigator.push(context, MaterialPageRoute(builder:(context) => UserData(name: _fullNameController,email: _emailInputController,gender: _selectedGenderController)));
                setState(()=> isloading= false);
                });}
                catch(e){
                  setState(()=> isloading= false);
                  Alert(context: context,
                  type: AlertType.error,
      title: "Error",
      desc: e.toString(),
      buttons: [
        DialogButton(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),

          child: Text(
            "Ok",
            
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
                }
                
                   //});
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
                    child: Text("By continuing, you agree to accept our Terms and Conditions",
                  style: TextStyle(fontFamily: 'Lora',fontSize: 8.0, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  ),
                  SizedBox(height: 10),
                  Row(
                      children: [
                        SizedBox(width: 10),
                        Container(
                           height:1.0,
                           width:160.0,
                           color:Colors.white,
                           ),
                           SizedBox(width: 20),
                           Container(
                  child: Text("or",
                  style: TextStyle(fontFamily: 'Lora',fontSize: 17.0, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                    ),
                    SizedBox(width: 20),
                           Container(
                  height:1.0,
                  width:160.0,
                  color:Colors.white,),
                      ],
                    ),
                    SizedBox(height: 10),

                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                    child:MaterialButton(
                      
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Colors.white,
              
              
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  SizedBox(width:40),
                   Image(image: AssetImage("Images/google_logo.png"),height: 25),
                   SizedBox(width:20),
                  Text('Sign Up With Google',style: new TextStyle(fontFamily: 'Lora',fontSize: 16.0,
                          fontWeight: FontWeight.bold, color: Colors.grey[700])),
                          ],
              ),
                          
              onPressed: () async{
                setState(()=> isloading=true);
                try{
                                      var details=await signInWithGoogle();
                                      await signUpGoogleSetup(details['names'],details['emails'],details['urls']);
                                      Navigator.push(context, MaterialPageRoute(builder:(context) => NavigationBar()));//TODO change it to Home Screen
                                      setState(()=> isloading=false);}
                  catch(e){
                    setState(()=> isloading= false);
                  Alert(context: context,
                  type: AlertType.error,
      title: "Error",
      desc: e.toString(),
      buttons: [
        DialogButton(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),

          child: Text(
            "Ok",
            
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
                  }
                                     
              },
          ),
          ),

          SizedBox(width: 20),
          Container(
                  width: MediaQuery.of(context).size.width*0.8,
                    child:MaterialButton(
                      
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Colors.indigo[700],
              
              
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  SizedBox(width:40),
                   Image(image: AssetImage("Images/facebookwhite.png"),height: 30),
                   SizedBox(width:20),
                  Text('Sign Up With Facebook',style: new TextStyle(fontFamily: 'Lora',fontSize: 16.0,
                          fontWeight: FontWeight.bold, color: Colors.white)),
                          ],
              ),
                          
              onPressed: () async{
                setState(()=> isloading=true);
                try{
                var fdls=await onFacebookLogIn();
                await signUpFaceBookSetup(fdls['usernames'],fdls['imageUrl'],fdls['FaceBookId'],fdls['email'],fdls['accessToken']);
                Navigator.push(context, MaterialPageRoute(builder:(context) => NavigationBar()));
                setState(()=> isloading = false);}
                catch(e){
                  setState(()=> isloading= false);
                  Alert(context: context,
                  type: AlertType.error,
      title: "Error",
      desc: e.toString(),
      buttons: [
        DialogButton(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),

          child: Text(
            "Ok",
            
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
                }
                
              },
          ),
          ),     
                ],
        
            
          ),
        ),
      ),
    ),
    );
  }
}