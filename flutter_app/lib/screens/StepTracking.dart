import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Backend_models/Steps/stepsback.dart';
import 'package:flutter_app/Backend_models/Widgets/circlecard.dart';
import 'package:flutter_app/screens/Statistics.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fit_kit/fit_kit.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';

class StepTracker extends StatefulWidget {
  @override
  _StepTrackerState createState() => _StepTrackerState();
}

class _StepTrackerState extends State<StepTracker> {

  //TODO Variables Declaration....
  String cals;
  String distances;
  final GlobalKey<RefreshIndicatorState> _refreshkey =new GlobalKey<RefreshIndicatorState>();
  Stream<PedestrianStatus> _pedestrianStatusStream;
  String step;
  String _pedestrianStatus = '';
  String _stepRead;
  double scorePercent;
  Connectivity netcheck = Connectivity();

  //String _fitkitSteps;
//Future<String> step;
TextEditingController _stepping;
final _formKey = GlobalKey<FormState>();

//Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


//TODO INIT STATE Introduced HERE.
  @override
  void initState() {
    _stepping = new TextEditingController();
    super.initState();
  accessingPermissions();
  grantappPermissions();
   _stepsReadGoal();
   caloriesRead();
   distanceRead();
   trackingUserActivity();
   stepRead();
  goalAchieved();
  checkConnectivity();
  }
//TODO NETWORK CONNECTIVITY CHECKING
String checkValue(var net) {
  String status = '';
  switch (net) {
    case ConnectivityResult.none:
      status = 'None';
      break;
  }
  return status;
}
Future<void> checkConnectivity() async {
    var net = await netcheck.checkConnectivity();
    var result = checkValue(net);
    if(result=="None"){
        Alert(
          context: context,
          content: Text('You have poor or No Internet connection'),
                  type: AlertType.error,
      title: "No Network",
      buttons: [DialogButton(
            gradient: LinearGradient(colors: [
           Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0)]),
          child: Text(
          "Ok",style: TextStyle(color: Colors.white, fontSize: 20),),
        onPressed: () => Navigator.of(context, rootNavigator: true).pop(),width: 120,)], 
    ).show();
    }
 } 
//TODO REFRESH WIDGET.
  Future<void> refreshProp() async{
  _refreshkey.currentState?.show(atTop: false);
  await caloriesRead();
  await _stepsReadGoal();
  await distanceRead();
  trackingUserActivity();
  await grantappPermissions();
  await stepRead();
  goalAchieved();
  await checkConnectivity();
  //accessingPermissions();
  await Future.delayed(Duration(seconds: 2));
}
//TODO PEDEMOTER WIDGET
void activityPedestrian(PedestrianStatus event) {
    setState(() {
      _pedestrianStatus = event.status;
    });
  }
  void trackingUserActivity(){
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream.listen(activityPedestrian);
    if(!mounted) return;
  }
//TODO PERMISSIONS METHODS....  
grantappPermissions() async{
  await Permission.location.request();
  await Permission.activityRecognition.request();
  //await Permission.notification.request();
 // await Permission.sensors.request();
}

void accessingPermissions() async {
 List<DataType> threedata = [DataType.DISTANCE,DataType.ENERGY,DataType.STEP_COUNT];
  if (await FitKit.requestPermissions(threedata)) {
    for (DataType type in threedata) {
      print('Hey this is acessing permissions:'+type.toString());
      try{
      await FitKit.read(type,
        dateFrom:  DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,0,0),
        dateTo: DateTime.now(),
       
      );
      var read= await FitKit.hasPermissions(threedata);
      print('Debugging1: '+read.toString());
      }
      catch(e){
        print(e);
      }
    }
  }
}
//TODO SHARED PREFERENCES...
_stepsSaveGoal(String stepped) async {
  var prefs = await SharedPreferences.getInstance();
  prefs.setString('stepsgoal',stepped);
  }

_stepsReadGoal() async {
    var prefs = await SharedPreferences.getInstance();
    var stepper =prefs.getString('stepsgoal')??'10000';
    print("hey this is read:"+stepper);
   setState((){
     step=stepper;
     
     print(step);
   });
   return step;
  }
//TODO Calculating the percentage from the goal
void goalAchieved() async{
  String goal=await _stepsReadGoal();
  String achieve=await stepRead();
  Statistics(goal: step,currentsteps: achieve);
  double achieved = (int.parse(achieve)/int.parse(goal));
  setState(() {
    scorePercent= achieved;
  });
}
//TODO FIT KIT APIS are introduced here.
stepRead() async {
  int sum =0;
  List<FitData> stepsToday = await FitKit.read(DataType.STEP_COUNT,dateFrom: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,0,0),
      dateTo: DateTime.now());
 // print('Fit data Calories '+ caloriesburnt.toString());
  for (var i = 0; i < stepsToday.length; i++) {
    sum += stepsToday[i].value.toInt();
  }
  setState(() {
    _stepRead = sum.toString();
   
  });
  return _stepRead;
}
caloriesRead() async {
    int sum =0;
  List<FitData> caloriesburnt = await FitKit.read(DataType.ENERGY,dateFrom: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,0,0),
      dateTo: DateTime.now());
 // print('Fit data Calories '+ caloriesburnt.toString());
  for (var i = 0; i < caloriesburnt.length; i++) {
    sum += caloriesburnt[i].value.toInt();
  }
  setState(() {
    cals = sum.toString();
   
  });
}
distanceRead() async {
    int sum1=0;
    
  List<FitData> distance = await FitKit.read(DataType.DISTANCE,dateFrom:DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,0,0),
  );
 // print('Fit data Distance '+distance.toString());
  for (var i = 0; i < distance.length; i++) {
    sum1 += distance[i].value.toInt();
    
  }
  setState(() {
    double kms=sum1/1000;
    distances = kms.toStringAsFixed(2);
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
        body: scorePercent==null?Center(child: CircularProgressIndicator(backgroundColor: Colors.black)):SafeArea(
            child: RefreshIndicator(
            backgroundColor: Colors.black,
            color: Colors.white,
            key: _refreshkey,
            onRefresh: refreshProp,
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
                        percent: scorePercent,
                        center:  Column(
                          children: [
                            SizedBox(height:100),
                            Icon(_pedestrianStatus == 'walking' ? Icons.directions_walk : _pedestrianStatus == 'stopped'? Icons.accessibility_new
                                                          : Icons.error,
                                                size: 100,color: Colors.white,
                                 ),
                             Text(_pedestrianStatus,style: _pedestrianStatus == 'walking' || _pedestrianStatus == 'stopped'? TextStyle(fontSize: 20,color: Colors.white): TextStyle(fontSize: 10, color: Colors.red),),
              ]
              ),
                        progressColor: Colors.purple[400],
                        backgroundColor: Colors.grey[800],
                      ),
                      ),
                      SizedBox(height: 20),
                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text("$_stepRead\t",style: new TextStyle(fontFamily: 'Lora',fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text("/ $step"+"\t",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
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
                        _stepsSaveGoal(_stepping.text);
                        _stepsReadGoal();
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
                            achieved: distances,
                            type: ' Kms'
                           
                          ),
                          CircleCard(
                            subhcolor: Colors.white,
                            hcolor: Colors.grey,
                            bordercolor: Colors.white,
                            imag: AssetImage("Images/Blurred1.png"),
                            title: 'Calories',
                            achieved: cals,
                            type: ' Kcal',
                          ),
                          
                          ],
                        ),
                      ),
                  ],
              ),
            )
          ),
                ),
        )
      );
  }  
}
