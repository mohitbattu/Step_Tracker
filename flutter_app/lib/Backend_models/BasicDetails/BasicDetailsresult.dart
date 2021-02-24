import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/BasicDetails/BasicDetailsback.dart';


class BasicDetailsResult extends StatelessWidget {
  BasicDetailsBack model;
  BasicDetailsResult({this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.height, style: TextStyle(fontSize: 22)),
            Text(model.weight, style: TextStyle(fontSize: 22)),
            Text(model.age, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}