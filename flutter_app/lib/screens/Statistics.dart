import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/Widgets/barchart.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF272525),
     appBar: AppBar(
       title: Text("Statistics"),
      centerTitle: true,
     toolbarHeight: 60.2,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
     backgroundColor: Colors.black,
  
   elevation: 50.0,
    ),
      body:SingleChildScrollView(
          child: Column(
            children: [
           //SizedBox(height: MediaQuery.of(context).size.height*0.0001),
           BarChartSample3(),
            ]
            )
          ),
 
      );
  }
}