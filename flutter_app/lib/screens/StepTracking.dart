import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Backend_models/Steps/stepsback.dart';
import 'package:flutter_app/Backend_models/Widgets/circlecard.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fit_kit/fit_kit.dart';
import 'package:shared_preferences/shared_preferences.dart';
class StepTracker extends StatefulWidget {
  @override
  _StepTrackerState createState() => _StepTrackerState();
}

class _StepTrackerState extends State<StepTracker> {
  String cals;
  String distances;
 
  
 //String step='10000';
Future<String> _stepuser;
TextEditingController _stepping;
Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

_stepsSaveGoal(String stepped) async {
    final SharedPreferences prefs = await _prefs;
    final String stepper = stepped;
    setState(() {
      _stepuser = prefs.setString("stepsgoal", stepper).then((bool success) {
        return stepper;
      });
    });
  }
  stepsReadGoal() async {
    final SharedPreferences prefs = await _prefs;
    final String stepper = prefs.getInt('stepsgoal')??'10000';
    setState(() {
      _stepuser = prefs.setString("stepsgoal", stepper).then((bool success) {
        return stepper;
      });
    });
  }
final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _stepping = new TextEditingController();
    stepsReadGoal();
    super.initState();
    caloriesRead();
    distanceRead();
  }

  void caloriesRead() async {
     int sum =0;
  List<FitData> caloriesburnt = await FitKit.read(DataType.ENERGY,dateFrom: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,0,0),
      dateTo: DateTime.now());
  for (var i = 0; i < caloriesburnt.length; i++) {
    sum += caloriesburnt[i].value;
  }
  setState(() {
    cals = sum.toString();
   
  });
}
  void distanceRead() async {
    int sum1=0;
  List<FitData> distance = await FitKit.read(DataType.DISTANCE,dateFrom:DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,0,0),
  );
  for (var i = 0; i < distance.length; i++) {
    sum1 += distance[i].value;
  }
  setState(() {
    distances = sum1.toString();
  });
}
  @override
  Widget build(BuildContext context) {
    StepsBackend model = StepsBackend();
    return Scaffold(
        appBar: AppBar(
              automaticallyImplyLeading: false,
            title: Text(DateFormat('EEE,d MMM , yyyy').format(DateTime.now()).toString(),style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
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
                      Text("/ $_stepuser"+"\t",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Text("Steps",style: new TextStyle(fontFamily: 'Lora',fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      ],
                      ),
                    ),
                    SizedBox(height: 20),
                MaterialButton(
                  //color: Colors.red,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                highlightElevation: 0,
                //borderSide: BorderSide(color: Colors.grey),
                color: Colors.grey[800],
                child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                             Icon(Icons.access_time_outlined,size: 25,color: Colors.white),
                          SizedBox(width:10),
                        Text("Set Goal",style: new TextStyle(fontFamily: 'Open Sans',fontSize: 20.0,
                       fontWeight: FontWeight.bold, color: Colors.white),
                         ),
                         ]
                                  ),
                        onPressed: (){
                       showDialog(  
          context: context,  
          builder: (context) {  
            return AlertDialog( 
              backgroundColor: const Color(0xFF272525), 
              title: Text('Enter Number of Steps',style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),  
              content: SingleChildScrollView(
                              child: Form(
                  key: _formKey,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),],
                    controller: _stepping,
                    style: TextStyle(fontSize: 20, color: Colors.white),  
                    decoration: InputDecoration(hintText: "eg: 10000",
                    hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                                    ),
                    ),
                  validator: (String value) {
            if (value.isEmpty) {
                      return 'Common give some number!!';
                      }
                      else if(value.length<3){
                        return 'You should minimum take 100 steps';
                      }
                      else if(value.startsWith('0')){
                        return 'Please type the correct steps';
                      }
                      return null;
                        },
                         onSaved: (String value){
                          model.numsteps = value;
                        },
                  ),
                ),
              ),  
              actions: <Widget>[
                 new MaterialButton(  
                  child: new Text('CANCEL',style: new TextStyle(fontFamily: 'Lora',fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.blue),),  
                  onPressed: () {
                      Navigator.of(context).pop(); 
                  },  
                ),
                new MaterialButton(  
                  child: new Text('SUBMIT',style: new TextStyle(fontFamily: 'Lora',fontSize: 10.0, fontWeight: FontWeight.bold, color: Colors.blue),),  
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                     _formKey.currentState.save();
                      Navigator.of(context).pop(); 
                    setState(() {
                      _stepsSaveGoal(_stepping.text);
                       });
                    //TODO Pass this data to the statistics too.
                    }
                  },  
                ), 
              ],  
            );  
          }
        );
           },
       ),
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
                          achieved: cals,
                          type: ' Meters'
                         
                        ),
                        CircleCard(
                          subhcolor: Colors.white,
                          hcolor: Colors.grey,
                          bordercolor: Colors.white,
                          imag: AssetImage("Images/Blurred1.png"),
                          title: 'Calories',
                          achieved: distances,
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
