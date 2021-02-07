import 'package:flutter/material.dart';
import 'signback.dart';

class Signbackresult extends StatelessWidget {
  Signbackend model;
  Signbackresult({this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.fullname, style: TextStyle(fontSize: 22)),
            Text(model.email, style: TextStyle(fontSize: 22)),
            Text(model.password, style: TextStyle(fontSize: 22)),
            Text(model.gender, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}