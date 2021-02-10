import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

  

Future<Map<String,String>> onFacebookLogIn() async {
    var facebook = FacebookLogin();
    var results = await facebook.logIn(permissions: [
  FacebookPermission.publicProfile,
  FacebookPermission.email,]);
  FacebookAccessToken accessToken = results.accessToken;
  String usernames;
  String userIds;
  String imageurl;
  String emails;
  /*final userprofile = await facebook.getUserProfile();
  String username= userprofile.name;
  String userId = userprofile.userId;
  String imageUrl = await facebook.getProfileImageUrl(width: 100);
  String email = await facebook.getUserEmail();*/
  switch (results.status) {
  case FacebookLoginStatus.success:
    // Logged in
    
    // Send access token to server for validation and auth
    final FacebookAccessToken accessToken = results.accessToken;
    print('Access token: ${accessToken.token}');

    // Get profile data
    final profile = await facebook.getUserProfile();
    print('Hello, ${profile.name}! You ID: ${profile.userId}');
    usernames= profile.name;
    userIds =profile.userId;
    // Get user profile image url
    final imageUrl = await facebook.getProfileImageUrl(width: 100);
    print('Your profile image: $imageUrl');
    imageurl = imageUrl;
    // Get email (since we request email permission)
    final email = await facebook.getUserEmail();
    emails = email;
    // But user can decline permission
    if (email != null)
      print('And your email is $email');
    break;
  case FacebookLoginStatus.cancel:
    // User cancel log in
    break;
  case FacebookLoginStatus.error:
    // Log in failed
    print('Error while log in: ${results.error}');
    break;
     
    
} 
var details = {'usernames': usernames,'imageUrl':imageurl,'userId':userIds,'email':emails,'accessToken': accessToken};
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
