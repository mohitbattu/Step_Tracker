import 'package:flutter/material.dart';
import 'userback.dart';

class Userbackresult extends StatelessWidget {
  Userbackend model;
  Userbackresult({this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.weight, style: TextStyle(fontSize: 22)),
            Text(model.height, style: TextStyle(fontSize: 22)),
            Text(model.age, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}