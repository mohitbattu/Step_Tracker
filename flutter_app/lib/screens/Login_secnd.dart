import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/Backend_models/loading.dart';
import 'package:flutter_app/Backend_models/loginbackpart/loginback.dart';
import 'package:flutter_app/Backend_models/signbackpart/signback.dart';
import 'package:flutter_app/screens/Signup.dart';
import 'package:flutter_app/Backend_models/loader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:validators/validators.dart' as validator;
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth =FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  Future<User> _signIn() async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;
    AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: gSA.accessToken,
    idToken: gSA.idToken,
  );
    UserCredential user = await _auth.signInWithCredential(credential);
    User currentUser=user.user;
    return currentUser;
  }
  String _email, _password;
  final _formKey = GlobalKey<FormState>();
  bool isloading = false;
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Loginbackend model = Loginbackend();
    return isloading ? Loading():Form(
      key: _formKey,
          child: Scaffold(
        backgroundColor: const Color(0xff121212),
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
                              SizedBox(height: 20),
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    SizedBox(width: 50),
                                    
                                    MaterialButton(
                                      
                                    //color: Colors.red,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                                  highlightElevation: 0,
                                  //borderSide: BorderSide(color: Colors.grey),
                                  color: Colors.red,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image(image: AssetImage("Images/google_logo.png")),
                                      SizedBox(width:10),
                                      Text("Google",style: new TextStyle(fontFamily: 'Open Sans',fontSize: 20.0,
                                      fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                    ]
                                  ),
                                    onPressed: () {
                                       Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()));
                                      },
                                    ),
                                      ],
                              ),
                                  
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
                                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    ),
                                    icon: Icon(Icons.lock,color: Colors.white,),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.orange)
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
                                ),
                                SizedBox(height: 30),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.3,
                                  //width: double.infinity,
                                  child: MaterialButton(
                                    //color: Colors.red,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),side: BorderSide(color: Colors.purple)),
                              
                                  child: Text("Login",style: new TextStyle(fontFamily: 'Open Sans',fontSize: 16.0,
                                      fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  
                                  
                                    onPressed: () async{
                                      if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                      setState(()=> isloading=true);
                                      try{
                                      await auth.signInWithEmailAndPassword(email: _email, password: _password).then((_){

                                        Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()));
                                        setState(()=> isloading=false);// Move to 6th Fragment
                                        });}
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
                                                  onPressed: () => Navigator.pop(context),width: 120,)],).show();
                                        }
                                      }
                                      },
                              ),
                                ),
          
                              SizedBox(height: 20),
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
                ],
              ),

          ),
        ),
      ),
    );
  }
}
