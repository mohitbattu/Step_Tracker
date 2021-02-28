import 'package:connectivity/connectivity.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Backend_models/BasicDetails/BasicDetailsback.dart';
import 'package:flutter_app/Backend_models/GettingUserdata.dart';
import 'package:flutter_app/Backend_models/GoogleBackend.dart';
import 'package:flutter_app/Backend_models/Notifications.dart';
import 'package:flutter_app/Backend_models/loading/loading.dart';
import 'package:flutter_app/screens/Base_screen.dart';
import 'package:flutter_app/screens/StepTracking.dart';
import 'package:flutter_app/screens/Weather.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Calendar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:progress_dialog/progress_dialog.dart';
class HomeDesignFlow extends StatefulWidget {
  var index;
  HomeDesignFlow({this.index});
  @override
  _HomeDesignFlowState createState() => _HomeDesignFlowState();
}

class _HomeDesignFlowState extends State<HomeDesignFlow> {
  int _page = 1;
  String image;
  String fullname;
  String height;
  String age;
  String weight;
  bool isloading = false;
  List<String> getdetails;
  List<String> details;
 TextEditingController _heightController;
TextEditingController _weightController;
TextEditingController _ageController;
Connectivity netcheck = Connectivity();

  final _formKey = GlobalKey<FormState>();
 
 // KFDrawerController _drawerController;
  final windows=[
Calendar(),
StepTracker(),
WeatherStat(),
];
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
savingDetails() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String uid =prefs.getString('uid');
  details=await getData(uid);
  prefs.setStringList('details',details);
}
getuid() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  getdetails=prefs.getStringList('details');
  print(getdetails);
  setState(() {
    image=getdetails[0];
    fullname=getdetails[1];
    email=getdetails[2];
    height=getdetails[3];
    age=getdetails[4];
    weight=getdetails[5];
  });
  print("ATTENTION DATA IS HERE "+details.toString());
}
ProgressDialog progressBar(context) {
ProgressDialog progress1 = ProgressDialog(context);
  progress1 = ProgressDialog(context,type: ProgressDialogType.Normal);
  progress1.style(
  message: '  Updating...',
  borderRadius: 15.0,
  backgroundColor: const Color(0xFF272525),
  progressWidget: CircularProgressIndicator(backgroundColor: Colors.black),
  elevation: 10.0,
  insetAnimCurve: Curves.easeInOut,
  progress: 0.0,
  progressTextStyle: TextStyle(
     color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.w400),
  messageTextStyle: TextStyle(
     color: Colors.white, fontSize: 19.0, fontWeight: FontWeight.w600)
  );
  return progress1;
}
signOutCredentials() async{
  await checkConnectivity();
  SharedPreferences prefs=await SharedPreferences.getInstance();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String uid=prefs.getString('uid');
  final facebook = FacebookLogin();
  print("hey this is uid:"+uid);
  await userLogOutTime(uid);
  //await signOutGoogle();
  await _auth.signOut();
  await facebook.logOut();
  await showNormalNotification('Logged Out','See You Back Soon!!');
  prefs.remove('uid');
  prefs.remove('email');
}
@override
  void didChangeDependencies() async{
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    await savingDetails();
    await getuid();
  }
    
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _heightController= TextEditingController();
    _weightController= TextEditingController();
    _ageController= TextEditingController();
    savingDetails();
    getuid();
    checkConnectivity();
  }
  @override
  Widget build(BuildContext context) {
    var pro=progressBar(context);
    BasicDetailsBack model = BasicDetailsBack();
    return isloading ? Loading():Scaffold(
      drawer: Drawer(
        child: Container(
          color: const Color(0xFF272525),
        child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xFF272525),
                ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                 // color: Colors.white,
                height: MediaQuery.of(context).size.height*0.03,
                alignment: Alignment.topRight,
                child: IconButton(
                    icon: Icon(Icons.west, size: 25,color: Colors.white),
                onPressed: (){
                  Navigator.pop(context);
                } ,
                  ),
                  ),
               SizedBox(height: 5),
                Container(
                  alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFFCFCFCF),
                        child: ClipOval(
                          child: SizedBox(
                            width: 60.0,
                            height: 60.0,
                            child: CachedNetworkImage(
                              imageUrl:"$image",
                              placeholder: (context, url) => CircularProgressIndicator(),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                      ),
                  SizedBox(height: 10),
                  Text("$fullname",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(height: 5),
                  Text("$email",style: new TextStyle(fontFamily: 'Lora',fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white70),),
              ],
              ),
              ),
              Divider(color: Colors.white),
              SizedBox(height: 10),
              Container(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                Text(" Running is one of the best ways to keep",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height:10),
                Text(" fit, catch up with friends, or even enjoy",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height:5),
               // alignment: Alignment.topLeft,
                Text(" outdoors.",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height: 50),
                Text(" Details",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(height:5),
                Container(
                           height:1.0,
                           width:110.0,
                           color:Colors.white,
                           ),
                SizedBox(height: 10),
                Row(
                children: [
                  Text(" Height",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(width: 4),
                  Text(": ",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("$height cms",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                 SizedBox(width: 80),
                 IconButton(
                        icon: Icon(
                        Icons.create_outlined,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    onPressed: () {
              showDialog(
               //TODO Height Controller 
               context: context,  
                builder: (context) => AlertDialog(
                  backgroundColor: const Color(0xFF272525), 
                  title: Text('Enter Height',style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),  
                  content:  SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),],
                      controller: _heightController,
                      style: TextStyle(fontSize: 20, color: Colors.white),  
                      decoration: InputDecoration(hintText: "eg: 154 (cms)",
                      hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15),
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                                      ),
                      ),
                    validator: (String value) {
            if (value.isEmpty) {
                        return 'Common give some number!!';
                        }
                        else if(value.length<2){
                          return 'Write the correct height';
                        }
                        else if(value.startsWith('0')){
                          return 'Please type the correct height';
                        }
                        return null;
                          },
                           onSaved: (String value){
                            model.height = value;
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
                    onPressed: () async{
                     
                      if (_formKey.currentState.validate()) {
                       _formKey.currentState.save();
                      var prefs=await SharedPreferences.getInstance();
                       await pro.show();
                       String uid=prefs.getString('uid');
                       await userHeightUpdate(uid, _heightController.text);
                       await savingDetails();
                       await getuid();
                       await pro.hide();
                       Navigator.of(context).pop();
                       
                      
                      //pd.close();
                       // _stepsSaveGoal(_stepping.text);
                       // _stepsReadGoal();
                      //TODO Pass this data to the statistics too.
                      }
                      
  
                    },  
                  ), 
              ],  
            ), 
     
        );
                      },
                      ),
                ],
                ),
                SizedBox(height: 5),
                Row(
                children: [
                  Text(" Age",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(width: 4),
                  Text(": ",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("$age",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(width: 130),
                 IconButton(
                        icon: Icon(
                        Icons.create_outlined,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    onPressed: () {
         showDialog( 
           //TODO Age Controller
          context: context,  
          builder: (context) {  
            return AlertDialog( 
              backgroundColor: const Color(0xFF272525), 
              title: Text('Enter Age',style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),  
              content: SingleChildScrollView(
                                child: Form(
                    key: _formKey,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),],
                      controller: _ageController,
                      style: TextStyle(fontSize: 20, color: Colors.white),  
                      decoration: InputDecoration(hintText: "eg: 23 (Years)",
                      hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15),
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                                      ),
                      ),
                    validator: (String value) {
            if (value.isEmpty) {
                        return 'Common give some number!!';
                        }
                        else if(value.startsWith('0')){
                          return 'Please type the correct age';
                        }
                        return null;
                          },
                           onSaved: (String value){
                            model.height = value;
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
                    onPressed: () async{
                      if (_formKey.currentState.validate()) {
                       _formKey.currentState.save();
                       var prefs=await SharedPreferences.getInstance();
                       await pro.show();
                       String uid=prefs.getString('uid');
                       await userAgeUpdate(uid, _ageController.text);
                       await savingDetails();
                       await getuid();
                        Navigator.of(context).pop();
                       await pro.hide(); 
                       // _stepsSaveGoal(_stepping.text);
                       // _stepsReadGoal();
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
                ],
                
                ),
                SizedBox(height:5),
                Row(
                children: [
                  Text(" Weight",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  SizedBox(width: 4),
                  Text(": ",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text(" $weight Kgs",style: new TextStyle(fontFamily: 'Lora',fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(width: 65),
                IconButton(
                        icon: Icon(
                        Icons.create_outlined,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    onPressed: () {
         showDialog(
           //TODO Weight Controller  
          context: context,  
          builder: (context) {  
            return AlertDialog( 
              backgroundColor: const Color(0xFF272525), 
              title: Text('Enter Weight',style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),),  
              content: SingleChildScrollView(
                                child: Form(
                    key: _formKey,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),],
                      controller: _weightController,
                      style: TextStyle(fontSize: 20, color: Colors.white),  
                      decoration: InputDecoration(hintText: "eg: 75 (Kgs)",
                      hintStyle: TextStyle(color: Colors.grey[300],fontSize: 15),
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                                      ),
                      ),
                    validator: (String value) {
            if (value.isEmpty) {
                        return 'Common give some number!!';
                        }
                        else if(value.startsWith('0')){
                          return 'Please type the correct age';
                        }
                        return null;
                          },
                           onSaved: (String value){
                            model.height = value;
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
                    onPressed: () async{
                      if (_formKey.currentState.validate()) {
                       _formKey.currentState.save();
                       var prefs=await SharedPreferences.getInstance();
                       await pro.show();
                       String uid=prefs.getString('uid');
                       await userWeightUpdate(uid, _weightController.text);
                       await savingDetails();
                       await getuid();
                       await pro.hide();
                       print("Hey weight ");
                      Navigator.of(context).pop(); 
                       // _stepsSaveGoal(_stepping.text);
                       // _stepsReadGoal();
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
                ],
                ),
                   ],
                

                ), 
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.27),
               ListTile(
              tileColor: Colors.red[800],
              title: Row(
                children:[
                Text("Logout",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(width: MediaQuery.of(context).size.width*0.48),
                Icon(Icons.logout,size:25,color:Colors.white),
                ],
                ),
              onTap: () async{
                setState(()=> isloading=true);
                await signOutCredentials();
                Navigator.push(context, MaterialPageRoute(builder:(context) => Basescreen()));
                setState(()=> isloading=false);
              },
            ),

            ],
           
          ),
        )
      ),
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text("Step Tracker",style: new TextStyle(fontFamily: 'Lora',fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          toolbarHeight: 60.2,
          backgroundColor: Colors.black,
          elevation: 50.0,
          actions: [
              //SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.analytics_rounded, size: 25,color: Colors.white),
              onPressed: (){
                var pages=widget.index;
                pages.animateToPage(2,duration:Duration(milliseconds: 250),curve: Curves.bounceInOut);
              } ,
                ),
          ],
        ),
      bottomNavigationBar: CurvedNavigationBar(
              color: const Color(0xFF000000),
              backgroundColor: const Color(0xFF272525),
              buttonBackgroundColor: const Color(0xFF000000),
              height: 48,
              index: 1,
              animationCurve: Curves.fastLinearToSlowEaseIn,
              items: <Widget>[
              Icon(Icons.calendar_today_outlined, size: 20,color: Colors.white),
              Image.asset("Images/Logo.jpg",height: MediaQuery.of(context).size.height*0.05),
              Icon(Icons.wb_sunny,size: 20,color: Colors.white),
             //Icon(Icons.trending_up_outlined,size: 12,color: Colors.white),
            ],
            onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
              letIndexChange: (index) => true,
            ),

      backgroundColor: const Color(0xFF272525),
        body:windows[_page],
    );
  } 
}
