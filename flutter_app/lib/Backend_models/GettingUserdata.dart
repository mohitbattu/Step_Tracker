

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future<List<String>> getData(String uid) async{
  
  DocumentSnapshot valuedata= await FirebaseFirestore.instance.collection('AppUsers').doc(uid).get();
  String image= valuedata.get('ImageUrl');
  String fullname = valuedata.get('fullName');
  String email = valuedata.get('email');
  String height = valuedata.get('height');
  String age = valuedata.get('age');
  String weight = valuedata.get('weight');
  List<String> data= [image,fullname,email,height,age,weight];
  return data;
}
Future<void> userHeightUpdate(String uid,String height) async {
  CollectionReference register = FirebaseFirestore.instance.collection('AppUsers');
  await register.doc(uid).update({ 'height': height});
}

Future<void> userAgeUpdate(String uid,String age) async {
  CollectionReference register = FirebaseFirestore.instance.collection('AppUsers');
  await register.doc(uid).update({ 'age': age});
}

Future<void> userWeightUpdate(String uid,String weight) async {
  CollectionReference register = FirebaseFirestore.instance.collection('AppUsers');
  await register.doc(uid).update({ 'weight': weight});
}

Future<void> userLogOutTime(String uid) async {
  CollectionReference register = FirebaseFirestore.instance.collection('AppUsers');
  DateTime time = DateTime.now();
  await register.doc(uid).update({ 'LogOutTime': time});
}