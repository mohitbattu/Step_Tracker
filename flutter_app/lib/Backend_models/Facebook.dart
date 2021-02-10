import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

  

Future<Map<String,String>> onFacebookLogIn() async {
    var facebook = FacebookLogin();
    var results = await facebook.logIn(permissions: [
  FacebookPermission.publicProfile,
  FacebookPermission.email,]);
  FacebookAccessToken accessToken = results.accessToken;

  final userprofile = await facebook.getUserProfile();
  String username= userprofile.name;
  String userId = userprofile.userId;
  String imageUrl = await facebook.getProfileImageUrl(width: 100);
  String email = await facebook.getUserEmail();
  var details = {'usernames': username,'imageUrl':imageUrl,'userId':userId,'email':email,'accessToken': accessToken};
  return details;
}

Future<void> signUpFaceBookSetup(String username,String imageUrl,String userId,String email,String accessToken) async{
  CollectionReference register = FirebaseFirestore.instance.collection('AppUsers');
  //DocumentReference userId = FirebaseFirestore.instance.collection('register').doc();
  //print("$fullName $email $gender");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString(); 
  DateTime time = DateTime.now();
  await register.doc(uid).set({'Name': username, 'email': email,'ImageUrl': imageUrl,'Log_in_time': time,'accessToken':accessToken,'uid': uid,'userId':userId});
  }
  //return uid;//.then((value){
    //return value.id.toString();
  //}); 
//users.add({'displayName': displayName, 'uid': uid});
