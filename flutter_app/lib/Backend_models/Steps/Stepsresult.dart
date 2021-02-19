import 'package:flutter/material.dart';
import 'Stepsback.dart';

class Stepsbackresult extends StatelessWidget {
  StepsBackend model;
  Stepsbackresult({this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.numsteps, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}