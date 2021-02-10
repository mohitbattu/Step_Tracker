import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
 String name,email,imageUrl;

Future <Map<String,String>> signInWithGoogle() async {
 
  
 final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,);
  final UserCredential authResult = await _auth.signInWithCredential(credential);
  final User user = authResult.user; 
  final User currentUser =  _auth.currentUser;
  assert(user.uid == currentUser.uid);
  name = user.displayName;
  email = user.email;
  imageUrl = user.photoURL;
  var details={'names': name.toString(),'emails': email.toString(),'urls': imageUrl.toString()};
  return details;
}

Future<String> signUpGoogleSetup(String name,String email,String imageurl) async {
  CollectionReference register = FirebaseFirestore.instance.collection('AppUsers');
  //DocumentReference userId = FirebaseFirestore.instance.collection('register').doc();
  //print("$fullName $email $gender");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString(); 
  DateTime time = DateTime.now();
  await register.doc(uid).set({'Name': name, 'email': email,'ImageUrl': imageurl,'Log_in_time': time,'uid': uid,});
  //return uid;//.then((value){
    //return value.id.toString();
  //}); 
//users.add({'displayName': displayName, 'uid': uid});
}





void signOutGoogle() async{
  await googleSignIn.signOut();
}