import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> signUpSetup(String fullName,String email, String gender) async {
  CollectionReference register = FirebaseFirestore.instance.collection('register');
  //DocumentReference userId = FirebaseFirestore.instance.collection('register').doc();
  //print("$fullName $email $gender");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  await register.add({'fullName': fullName, 'email': email, 'gender': gender,'uid': uid});//.then((value){
    //return value.id.toString();
  //}); 
//users.add({'displayName': displayName, 'uid': uid});
}

Future<void> userSetup(String weight,String height, String age) async {
  CollectionReference register = FirebaseFirestore.instance.collection('userdataprofile');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  await register.add({'weight': weight, 'height': height, 'age': age,'uid': uid});
  //users.add({'displayName': displayName, 'uid': uid});
  //return;
}