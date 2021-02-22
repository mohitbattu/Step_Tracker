

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future getData(String uid) async{
  
  DocumentSnapshot valuedata= await FirebaseFirestore.instance.collection('AppUsers').doc(uid).get();
  var data= valuedata.get('');
   return data;
}