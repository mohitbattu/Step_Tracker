import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
Future<String> signUpSetup(String fullName,String email, String gender) async {
  CollectionReference register = FirebaseFirestore.instance.collection('register');
  //DocumentReference userId = FirebaseFirestore.instance.collection('register').doc();
  //print("$fullName $email $gender");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();

  await register.add({'fullName': fullName, 'email': email, 'gender': gender,'uid': uid});
  return uid;//.then((value){
    //return value.id.toString();
  //}); 
//users.add({'displayName': displayName, 'uid': uid});
}

Future<void> userSetup(String imglocation,String userid,String weight,String height, String age) async {
  CollectionReference register = FirebaseFirestore.instance.collection('userdataprofile');
  FirebaseStorage storage = FirebaseStorage.instance;
  final ref = storage.ref("user_profile").child(userid);
  String imageString = await ref.getDownloadURL();
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  await register.add({'weight': weight, 'height(cms)': height, 'age': age,'imageurl': imageString , 'imagelocation':imglocation,'uid': uid});
  //users.add({'displayName': displayName, 'uid': uid});
  //return;
}