import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> signUpSetup(String fullName,String email, String gender) async {
  CollectionReference register = FirebaseFirestore.instance.collection('register');
  print("$fullName $email $gender");
  await register.add({'fullName': fullName, 'email': email, 'gender': gender});
  //users.add({'displayName': displayName, 'uid': uid});
  return;
}
