import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/loginbackpart/loginback.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:validators/validators.dart' as validator;
import 'package:flutter_app/Backend_models/loading/loading.dart';

import 'Login_secnd.dart';
class PasswordReset extends StatefulWidget {
  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
   String _email;
   final _formKey = GlobalKey<FormState>();
   bool isloading = false;
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
     Loginbackend model = Loginbackend();
    return isloading ? Loading(): Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: const Color(0xff121212),
        appBar: AppBar(
        title: Text("Password Reset"),
        centerTitle: true,
        toolbarHeight: 60.2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        backgroundColor: Colors.black,
        elevation: 50.0,
      ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                                       borderRadius: BorderRadius.all(Radius.circular(125.0)),
                                        borderSide: BorderSide(color: Colors.purple)
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
                                  
                                  onChanged: (value) {
                                    setState(() {
                                      _email = value.trim();
                                    });
                                  },
                            ),
                    ),
                    SizedBox(height: 50,width:80),
                    Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        height: MediaQuery.of(context).size.width*0.1,// TODO Push should be modified for the next page.
                       child:MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                color: Colors.red[900],
                child:Text('Send Request',style: new TextStyle(fontFamily: 'Montserrat',fontSize: 16.0,
                            fontWeight: FontWeight.bold, color: Colors.white)),
                            
                
                onPressed: () async{
                  
                if (_formKey.currentState.validate()) {
                  
                  _formKey.currentState.save();
                  setState(()=> isloading=true);
                  //setState(() {
                  try{
                  await auth.sendPasswordResetEmail(email: _email).then((_){
Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen()));
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
                
),
                       ),
                ],
              ),
            )

          ),
        ),
      ),
    );
  }
}