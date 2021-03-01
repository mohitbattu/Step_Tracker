import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;
  

Future<Map<String,String>> onFacebookLogIn() async {
  final facebook = FacebookLogin();
// Log in
final results = await facebook.logIn(permissions: [
  FacebookPermission.publicProfile,
  FacebookPermission.email,
]);


// Check result status

    // Logged in
    
    // Send access token to server for validation and auth
    final FacebookAccessToken accessToken = results.accessToken;
    print(accessToken);
    AuthCredential credential = FacebookAuthProvider.credential(accessToken.token);
    print(credential);
    UserCredential setup = await _auth.signInWithCredential(credential);
    print(setup);
    final User user = setup.user; 
  final User currentUser =  _auth.currentUser;
  assert(user.uid == currentUser.uid);
    //print('Access token: ${accessToken.token}');
    String accessTokens = accessToken.toString();    // Get profile data
    var profile = await facebook.getUserProfile();
    //print('Hello, ${profile.name}! You ID: ${profile.userId}');
    String name = profile.name;
    String uid = profile.userId; 
    // Get user profile image url
    final imageUrl = await facebook.getProfileImageUrl(width: 100);
    String image = imageUrl.toString();
    //print('Your profile image: $imageUrl');

    // Get email (since we request email permission)
    final email = await facebook.getUserEmail();
    // But user can decline permission
    String emails =email.toString();
    var data = {'usernames': name,'imageUrl':image,'FaceBookId':uid,'email':emails,'accessToken': accessTokens};
    return data;
}

Future<String> signUpFaceBookSetup(String username,String imageUrl,String userId,String email,String accessToken) async{
  CollectionReference register = FirebaseFirestore.instance.collection('AppUsers');
  //DocumentReference userId = FirebaseFirestore.instance.collection('register').doc();
  //print("$fullName $email $gender");
  FirebaseAuth auth = FirebaseAuth.instance;
  DocumentSnapshot valuedata;
  String height;
  String age;
  String weight;
  print(auth);
  String firebaseuid = auth.currentUser.uid.toString();
  valuedata= await FirebaseFirestore.instance.collection('AppUsers').doc(firebaseuid).get();
   try{
  valuedata= await FirebaseFirestore.instance.collection('AppUsers').doc(firebaseuid).get();
  height = valuedata.get('height')??'0';
  age = valuedata.get('age')??'0';
  weight = valuedata.get('weight')??'0';
  }catch(e){
    print('Document doesnt exist');
  }
  DateTime time = DateTime.now();
  await register.doc(firebaseuid).set({'fullName': username, 'email': email,'ImageUrl': imageUrl,'Facebookid':userId,'Log_in_time': time,'accessToken':accessToken,'firebaseuid': firebaseuid,'height':height,'weight':weight,'age':age});
  return firebaseuid;
  }
  //return uid;//.then((value){
    //return value.id.toString();
  //}); 
//users.add({'displayName': displayName, 'uid': uid});
