import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;

GoogleSignIn _googleSignIn = GoogleSignIn();
 String name,email,imageUrl;

Future <Map<String,String>> signInWithGoogle() async {
  
 final GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
  
  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,);
  
  final UserCredential authResult = await _auth.signInWithCredential(credential);
  //bool checkuser = await  getCheck(authResult.user.uid.toString());
  final User user = authResult.user; 
  final User currentUser =  _auth.currentUser;
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
  DocumentSnapshot valuedata;
  String height;
  String age;
  String weight;
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  try{
  valuedata= await FirebaseFirestore.instance.collection('AppUsers').doc(uid).get();
  height = valuedata.get('height')??'0';
  age = valuedata.get('age')??'0';
  weight = valuedata.get('weight')??'0';
  }catch(e){
    print('Document doesnt exist');
  }
  DateTime time = DateTime.now();
  await register.doc(uid).set({'fullName': name, 'email': email,'ImageUrl': imageurl,'Log_in_time': time,'uid': uid,'height':height,'weight': weight,'age':age});
  return uid;//.then((value){
    //return value.id.toString();
  //}); 
//users.add({'displayName': displayName, 'uid': uid});
}
Future<void> signOutGoogle() async{
  await _googleSignIn.signOut();
}