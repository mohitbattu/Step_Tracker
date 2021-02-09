import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
 String name,email,imageUrl;

Future <String> signInWithGoogle() async {
 
  
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
  return 'succeeded: $user';
}


Future<void> signUpGoogleSetup(String weight,String height, String age,String gender,String name,String email,String imageurl) async {
  CollectionReference register = FirebaseFirestore.instance.collection('GoogleUsers');
  //DocumentReference userId = FirebaseFirestore.instance.collection('register').doc();
  //print("$fullName $email $gender");
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  await register.add({'Name': name, 'email': email,'Weight': weight,'Height(cms)': height,'age': age,'gender': gender,'ImageUrl': imageurl,'uid': uid});
  //return uid;//.then((value){
    //return value.id.toString();
  //}); 
//users.add({'displayName': displayName, 'uid': uid});
}


void signOutGoogle() async{
  await googleSignIn.signOut();
}