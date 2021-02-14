import 'package:flutter/material.dart';
import 'package:flutter_app/Backend_models/Widgets/circlecard.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StepTracker extends StatefulWidget {
  @override
  _StepTrackerState createState() => _StepTrackerState();
}

class _StepTrackerState extends State<StepTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
          title: Text("Thu, 3 Jul 2020",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          toolbarHeight: 30.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          backgroundColor: Colors.purple[500],
          elevation: 50.0,
        ),
      backgroundColor: const Color(0xFF272525),
      body: SafeArea(
        
              child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                
                SizedBox(height: 40),
                Container(
                  
                  child:CircularPercentIndicator(
                    radius: 300.0,
                    lineWidth: 20.0,
                    percent: 0.70,
                    center: Image.asset("Images/Step.png",height: MediaQuery.of(context).size.height*0.10),
                    progressColor: Colors.purple[400],
                    backgroundColor: Colors.grey[800],
                  ),
                  ),
                  SizedBox(height: 20),
                    Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("7500\t",style: new TextStyle(fontFamily: 'Lora',fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text("/ 10000\t",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    Text("Steps",style: new TextStyle(fontFamily: 'Lora',fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 250,
                    child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        CircleCard(
                        subhcolor: Colors.white,
                        hcolor: Colors.white60,
                        bordercolor: Colors.white,
                        imag: AssetImage("Images/RunBlur.png"),
                        title: 'Distance',
                        achieved: 35,
                        type: ' Kms'
                       
                      ),
                      CircleCard(
                        subhcolor: Colors.white,
                        hcolor: Colors.grey,
                        bordercolor: Colors.white,
                        imag: AssetImage("Images/Blurred1.png"),
                        title: 'Calories',
                        achieved: 350,
                        type: ' Kcal',
                      ),
                      
                      ],
                    ),
                  ),
              ],
            ),
          )
        ),
      )
    );
  }
}