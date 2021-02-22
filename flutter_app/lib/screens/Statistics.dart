import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  var dayli;
  String goaling;
  String achieving;
  List<double> liststep;
  int count=0;
  List<double> presenttime;
  List<double> weektime;
  List<double> deadline;
  List<double> actualstepping;
   var stepper;
  RefreshController _refreshController = RefreshController(initialRefresh: false);
  Connectivity netcheck = Connectivity();
  String checkValue(var net) {
  String status = '';
  switch (net) {
    case ConnectivityResult.none:
      status = 'None';
      break;
  }
  return status;
}
void _refreshingStatistics() async{
  //TODO Write a refreshing Widget.
  await updateList();
  await weekTime();
  await checkConnectivity();
  await Future.delayed(Duration(seconds:2));
    _refreshController.refreshCompleted();
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
  int getcurrentday(){
    String date = DateFormat('EEEE').format(DateTime.now()).toString();
    var days={'Monday': 0, 'Tuesday': 1, 'Wednesday': 2,'Thursday': 3,'Friday': 4,'Saturday': 5,'Sunday': 6};
    int currentdate=days[date];
    return currentdate;
  }
  List<double> splitString(String id){
    var arr=id.split(' ');
    var timezone=arr[1].split(':');
    var date=arr[0].split('-');
    var updated=date+timezone;
    List<double> updatedAsInt = updated.map((data) => double.parse(data)).toList();
    return updatedAsInt;
  }
gettingWeektime(int counts) async{
  var prefs = await SharedPreferences.getInstance();
  if(counts==0){
    String timelimit=DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,24,0).add(Duration(days: 7)).toString();
    print(timelimit);
    List<double> mod=splitString(timelimit);
    weektime=mod;
    prefs.setStringList('weektim', weektime.map((data) => (data).toString()).toList());
    prefs.setInt('count',1);
    }
}
weekTime() async{
    var prefs = await SharedPreferences.getInstance();
    int counts=prefs.get('count');
    String present=DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,DateTime.now().hour,DateTime.now().minute,DateTime.now().second).toString();
    List<double> getCurr=splitString(present);
    print(getCurr);
    await gettingWeektime(counts);
    List<String> dead=prefs.getStringList('weektim');
    List<double> deadline=dead.map((data) => double.parse(data)).toList();
    print(deadline);
    if(deadline[1]<=getCurr[1]){
      if(deadline[2]<=getCurr[2]){
        if(deadline[3]<=getCurr[3]){
          print('time duration is over for ');
          prefs.setInt('count',0);
          dayli=[0.0,0.0,0.0,0.0,0.0,0.0,0.0];
          prefs.setStringList('dayli',dayli.map((data) => (data).toString()).toList());
        }
      }
    }
  }
  Future<String> checkGoalAch(String achieved) async{
    double sum=5000.0;
    double add;
    var prefs = await SharedPreferences.getInstance();
    String goal=prefs.get('currentGoal');
    if(int.parse(goal)<=int.parse(achieved)){
      for(int i=0;i<1;i++){
        add=sum+double.parse(achieved);
      }
      goal = add.toString();
      return goal;
      }
    else{
        return goal;
      }
      
  }
void _savinglistStep(List<double> liststepper,int numberday,String achieved) async{
  var prefs = await SharedPreferences.getInstance();
 liststepper[numberday]=double.parse(achieved);
 prefs.setStringList('liststep1', liststepper.map((data) =>(data).toString()).toList());
}
 updateList() async{
    var prefs = await SharedPreferences.getInstance();
    String achieved =prefs.get('currentachieve');
    String goal= await checkGoalAch(achieved);
    print(double.parse(achieved));
    int daynumber=getcurrentday();
   stepper= [0.0,0.0,0.0,0.0,0.0,0.0,0.0];
    List<String> dead=prefs.getStringList('dayli');
    if(dead!=null){
    deadline=dead.map((data) => double.parse(data)).toList();
    }
    print(dead);
   // print(deadline);
    liststep=deadline??stepper;
    _savinglistStep(liststep,daynumber,achieved);
    List<String> actualdata=prefs.getStringList('liststep1');
    setState(() {
      achieving=achieved;
      if(goal!=achieved){
        goaling = goal;
      }
      print(daynumber);
      actualstepping=actualdata.map((data) => double.parse(data)).toList();
    });
  }
@override
void initState() { 
  super.initState();
  
  updateList();
  weekTime();
  checkConnectivity();
}

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
      body:achieving==null?Center(child: CircularProgressIndicator(backgroundColor: Colors.black)):SmartRefresher(
        enablePullDown: true,
      header: WaterDropHeader(),
      controller: _refreshController,
      onRefresh: _refreshingStatistics,
              child: SingleChildScrollView(
            child: Column(
              children: [
             //SizedBox(height: MediaQuery.of(context).size.height*0.0001),
              AspectRatio(
        aspectRatio: 0.540,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          color: const Color(0xFF3A3A3A),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
                    children: [
                    //SizedBox(height: 20),
                   Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("Images/Logo.jpg",height: MediaQuery.of(context).size.height*0.05),
                    const SizedBox(
                      width: 18,
                    ),
                    const Text(
                      'Number of Steps',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '(This Week)',
                      style: TextStyle(color: Color(0xff77839a), fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 38,
                ),
                  Expanded(
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: double.parse(goaling),
                barTouchData: BarTouchData(
                    enabled: false,
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.transparent,
                      tooltipPadding: const EdgeInsets.all(0),
                      tooltipBottomMargin: 8,
                      getTooltipItem: (
                        BarChartGroupData group,
                        int groupIndex,
                        BarChartRodData rod,
                        int rodIndex,
                      ) {
                        return BarTooltipItem(
                          rod.y.round().toString(),
                          TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      },
                    ),
                ),
                titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => const TextStyle(
                          color: Color(0xff7589a2), fontWeight: FontWeight.bold, fontSize: 14),
                      margin: 20,
                      getTitles: (double value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'Mon';
                          case 1:
                            return 'Tue';
                          case 2:
                            return 'Wed';
                          case 3:
                            return 'Thu';
                          case 4:
                            return 'Fri';
                          case 5:
                            return 'Sat';
                          case 6:
                            return 'Sun';
                          default:
                            return '';
                        }
                      },
                    ),
                    leftTitles: SideTitles(showTitles: false),
                ),
                borderData: FlBorderData(
                    show: false,
                ),
                barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(y: actualstepping[0], colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(y: actualstepping[1], colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(y:actualstepping[2],colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(y: actualstepping[3], colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(y: actualstepping[4], colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                    BarChartGroupData(
                      x: 5,
                      barRods: [
                        BarChartRodData(y: actualstepping[5], colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                     BarChartGroupData(
                      x: 6,
                      barRods: [
                        BarChartRodData(y: actualstepping[6], colors: [Colors.lightBlueAccent, Colors.greenAccent])
                      ],
                      showingTooltipIndicators: [0],
                    ),
                ],
              ),
            ),
                                    ),
                  ),
                    ],
          ),
        ),
    ),
              ]
              )
            ),
      ),
 
      );
  }
}