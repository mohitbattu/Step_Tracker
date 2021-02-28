import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/Backend_models/GoogleBackend.dart';
import 'package:flutter_app/Backend_models/Notifications.dart';
import 'package:flutter_app/Backend_models/loading/loading.dart';
import 'package:flutter_app/Backend_models/loginbackpart/loginback.dart';
import 'package:flutter_app/Backend_models/Facebook.dart';
import 'package:flutter_app/screens/Signup.dart';
import 'package:flutter_app/screens/NavigationScreen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:validators/validators.dart' as validator;
import 'package:flutter_app/screens/passwordreset.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;
  final _formKey = GlobalKey<FormState>();
  bool isloading = false;
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() { 
    super.initState();
    savingCount();
  }
savingCount() async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     prefs.setInt('count',0);
  }

  @override
  Widget build(BuildContext context) {
    Loginbackend model = Loginbackend();
    return isloading ? Loading():Form(
      key: _formKey,
          child: Scaffold(
        backgroundColor: const Color(0xFF121212),
        body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      CircleAvatar(
                                radius: 120.0,
                                backgroundColor: Colors.yellow,
                                backgroundImage: AssetImage('Images/Logo.jpg'),
                              ),
                              SizedBox(height: 50),
                              Container(
                               //width: 350,
                               width: MediaQuery.of(context).size.width*0.93,
                               //padding: EdgeInsets.all(20),
                               child: TextFormField(
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                  ),
                                    /*hintText: 'Email',*/
                                  icon: Icon(Icons.attach_email_rounded,color: Colors.white,),
                                   /*hintStyle: TextStyle(color: Colors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),*/
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.purple)
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
                                
                                onChanged: (value) {
                                  setState(() {
                                    _email = value.trim();
                                  });
                                },
                              ),
                              ),
                              SizedBox(height: 30),

                              Container(
                                width: MediaQuery.of(context).size.width*0.93,
                                child:TextFormField(
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
                                      borderSide: BorderSide(color: Colors.orange)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    labelText: "Password",labelStyle: TextStyle(color: Colors.white),
                                    suffixIcon: Icon(Icons.visibility_off,color: Colors.white70),
                                  ),
                                  
                                  validator: (String value) {
                          if (value.length < 5) {
                    return 'Password should be minimum 5 characters';
                    }
                    else if(value.isEmpty){
                      return 'Please enter correct password';
                    }
                    return null;
                      },
                      onSaved: (String value){
                        model.password = value;
                      },
                                  onChanged: (value) {
                                    setState(() {
                                      _password = value.trim();
                                    });
                                  },
                                ),
                                ),//TODO ADD Forgot Password.
                                SizedBox(height: 10),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                      
                                      child: Text("Forgot Your Password?",style: TextStyle(
                                        decoration: TextDecoration.underline,fontSize: 10,fontFamily: 'Lora',fontWeight: FontWeight.bold,color: Colors.blue
                                      ),),
                                      onPressed: (){
                                        setState(()=> isloading=true);
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordReset()));
                                        setState(()=> isloading=false);
                                      },
                                    ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.8,
                                  height: MediaQuery.of(context).size.width*0.1,
                                  //width: double.infinity,
                                  child: MaterialButton(
                                    
                                    color: Colors.red[900],
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              
                                  child: Text("Login",style: new TextStyle(fontFamily: 'Open Sans',fontSize: 16.0,
                                      fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                    onPressed: () async{
                                      if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                      setState(()=> isloading=true);
                                      SharedPreferences prefs = await SharedPreferences.getInstance();
                                      try{
                                      await auth.signInWithEmailAndPassword(email: _email, password: _password);
                                      String uid = auth.currentUser.uid.toString();
                                      prefs.setString('email', _email);
                                      prefs.setString('uid',uid);
                                      DocumentSnapshot valuedata= await FirebaseFirestore.instance.collection('AppUsers').doc(uid).get();
                                      String fullname = valuedata.get('fullName');
                                      await showNormalNotification('Hey '+fullname+"! ,",'Lets Start Pushing Our Day to reach our Todays Goal!!');
                                      Navigator.push(context, MaterialPageRoute(builder:(context) => NavigationBar()));
                                      setState(()=> isloading=false);
                                      // Move to 6th Fragment
                                        }
                                        catch(e){
                                          setState(()=> isloading=false);
                                          Alert(context: context,type: AlertType.error,
                                          title: "Error",
                                          desc: e.toString(),
                                          buttons: [
                                            DialogButton(
                                              gradient: LinearGradient(colors: [
                                                Color.fromRGBO(116, 116, 191, 1.0),
                                                Color.fromRGBO(52, 138, 199, 1.0)]),
                                                child: Text(
                                                  "Ok",style: TextStyle(color: Colors.white, fontSize: 20),),
                                                  onPressed: () => Navigator.of(context, rootNavigator: true).pop(),width: 120,)],).show();
                                        }
                                      }
                                      },
                              ),
                                ),
          
                              SizedBox(height: 10),
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Don't Have an Account?",style: TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.white),
                                    ),
            
                                    TextButton(
                                      
                                      child: Text("SignUp Now",style: TextStyle(
                                        decoration: TextDecoration.underline,fontSize: 10,fontFamily: 'Lora',fontWeight: FontWeight.bold,color: Colors.blue
                                      ),),
                                      onPressed: (){
                                        setState(()=> isloading=true);
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupForm()));
                                        setState(()=> isloading=false);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                      children: [
                        SizedBox(width: 25),
                        Container(
                           height:1.0,
                           width:120.0,
                           color:Colors.white,
                           ),
                           SizedBox(width: 10),
                           Container(
                  child: Text("Sign In With",
                  style: TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                    ),
                    SizedBox(width: 10),
                           Container(
                  height:1.0,
                  width:120.0,
                  color:Colors.white,),
                      ],
                    ),
                    SizedBox(height:30),
                    Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    SizedBox(width: 40),
                                    MaterialButton(
                                    //color: Colors.red,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                                  highlightElevation: 0,
                                  //borderSide: BorderSide(color: Colors.grey),
                                  color: Colors.grey[800],
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(image: AssetImage("Images/google_logo.png"),height: 25),
                                      SizedBox(width:10),
                                      Text("Google",style: new TextStyle(fontFamily: 'Open Sans',fontSize: 20.0,
                                      fontWeight: FontWeight.bold, color: Colors.white70),
                                  ),
                                    ]
                                  ),
                                    onPressed: () async {
                                       SharedPreferences prefs = await SharedPreferences.getInstance();
                                      setState(()=> isloading=true);
                                      
                                      try{
                                      var gdls=await signInWithGoogle();
                                      prefs.setString('email',gdls['emails']);
                                      String uid=await signUpGoogleSetup(gdls['names'],gdls['emails'],gdls['urls']);
                                      prefs.setString('uid',uid);
                                      await showNormalNotification('Hey '+gdls['names']+"! ,",'Lets Start Pushing Our Day to reach our Todays Goal!!');
                                      Navigator.push(context, MaterialPageRoute(builder:(context) => NavigationBar()));
                                      setState(()=> isloading=false);
                                      }
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
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),

          width: 120,
        )
      ],
    ).show();
                                      }
                                       
                                      },
                                    ),
                                    SizedBox(width: 10),
                                    Text("or",
                  style: TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.white),),
                                    SizedBox(width:10),
                                    MaterialButton(
                                    //color: Colors.red,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                                  highlightElevation: 0,
                                  //borderSide: BorderSide(color: Colors.grey),
                                  color: Colors.grey[800],
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(image: AssetImage("Images/Facebook.png"),height: 25),
                                      SizedBox(width:10),
                                      Text("Facebook",style: new TextStyle(fontFamily: 'Open Sans',fontSize: 20.0,
                                      fontWeight: FontWeight.bold, color: Colors.white70),
                                  ),
                                    ]
                                  ),
                                    onPressed: () async{
                                      //TODO Create a FaceBook Authentication.
                                      setState(()=> isloading=true);
                                       SharedPreferences prefs = await SharedPreferences.getInstance();
                                      try{
                                      var fdls=await onFacebookLogIn();
                                      print(fdls);
                                      prefs.setString('email',fdls['email']);
                                      String fireuid=await signUpFaceBookSetup(fdls['usernames'],fdls['imageUrl'],fdls['FaceBookId'],fdls['email'],fdls['accessToken']);
                                      await showNormalNotification('Hey '+fdls['usernames']+"! ,",'Lets Start Pushing Our Day to reach our Todays Goal!!');
                                      prefs.setString('uid', fireuid);
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
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          width: 120,
        )
      ],
    ).show();
                                      }
                                      
                                      },
                                    ),
                                      ],
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
