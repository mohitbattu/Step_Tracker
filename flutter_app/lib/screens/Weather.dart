import 'package:connectivity/connectivity.dart';
import 'package:flutter_app/Backend_models/Notifications.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
//import 'package:weather_icons/weather_icons.dart';
import 'package:dynamic_weather_icons/dynamic_weather_icons.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class WeatherStat extends StatefulWidget {

  @override
  _WeatherStatState createState() => _WeatherStatState();
}

class _WeatherStatState extends State<WeatherStat> {
  //String apiUrl='api.openweathermap.org/data/2.5/weather?zip=';
 
  String weatherstatus;
  String place;
  double temperature;
  String weather;
  String weathertype;
  String weathertypes1;
  String weatherdescription;
  List<String> weathercodes1=[];
 List<String> maxtemp1 = [];
 List<String> mintemp1 = [];
  List<Weather> wfive=[];
  List<Weather> _fivedays=[];
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

  @override
 initState() {
    super.initState();
    getCurrentWeather();
    checkConnectivity();
    bringingCustomNotification();
  }
void bringingCustomNotification() async{
  WeatherFactory wf = new WeatherFactory('f3e5e858f1e18489361dcfde6e91918f');
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  double lat = position.latitude;
  double long = position.longitude;
  Weather w = await wf.currentWeatherByLocation(lat,long);
  showNotification("Today's Weather is: "+w.temperature.celsius.toInt().toString()+" °C",w.weatherDescription);
} 
void _refreshingWeather() async{
  await checkConnectivity();
  await getCurrentWeather();
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

Future<void> getCurrentWeather() async{
    WeatherFactory wf = new WeatherFactory('f3e5e858f1e18489361dcfde6e91918f');
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    double lat = position.latitude;
    double long = position.longitude;
    Weather w = await wf.currentWeatherByLocation(lat,long);
    wfive = await wf.fiveDayForecastByLocation(lat, long);
    weatherstatus = w.weatherMain;
    setState(() {
      _fivedays=wfive;
      getListCodes();
      getMaxList();
      getMinList();
      weathertype=w.weatherConditionCode.toString();
      weatherdescription="wi-owm-day-"+weathertype;
      print(weatherdescription);
      place = w.areaName +","+w.country;
      temperature = w.temperature.celsius;

      weather = weatherstatus.replaceAll(' ', '').toLowerCase();
    });
}
String getCode(int i){  
  print('hi get code');
  return "wi-owm-day-"+_fivedays[i].weatherConditionCode.toString();
      
}
String getMaxTemp(int i){
      
  return _fivedays[i].tempMax.toString();
}
String getMinTemp(int i){
  return _fivedays[i].tempMin.toString();
}
void getMinList(){
  print('hi min list');
  for (int i=8;i<41;i=i+8) {
  if(i<40){
    
      mintemp1.add(getMinTemp(i));
 
  }else{
   
      mintemp1.add(getMinTemp(39));

  }
   }
   
 
}
void getMaxList(){
  print('HI getMaxlist');
  for (int i=8;i<41;i=i+8) {
  if(i<40){

      maxtemp1.add(getMaxTemp(i));
      print(maxtemp1);
  

  }else{
   
      maxtemp1.add(getMaxTemp(39));
      print(maxtemp1);
  }
   }
  
}
void getListCodes(){
  print('List codes hi');
for (int i=8;i<41;i=i+8) {
  if(i<40){
      weathercodes1.add(getCode(i));
     print(weathercodes1);
 

  }else{
   
      weathercodes1.add(getCode(39));
      print(weathercodes1);
  }
   }  
}

 // getCurrentCordinates();
  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      header: WaterDropHeader(),
      controller: _refreshController,
      onRefresh: _refreshingWeather,
          child: MaterialApp(
          debugShowCheckedModeBanner: false,
              home: Container(
                    //height: MediaQuery.of(context).size.height,
             // width: MediaQuery.of(context).size.width*0.70,
              decoration: BoxDecoration(
              image: DecorationImage(
                    image: AssetImage("Images/Weather/$weather.png"),
                     fit: BoxFit.cover,
                  ),
                  ),
                   child: weather==null?Center(child: CircularProgressIndicator(backgroundColor: Colors.black)):
                   Scaffold(
                       backgroundColor: Colors.transparent,
                        body: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            SizedBox(height: 100),
                             Icon(
                                 WeatherIcon.getIcon(weatherdescription),
                                 color: Colors.white,
                                  size: 70.0,
                                ),
                            //SizedBox(height: 80),
                                 SizedBox(height: 30),
                        Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    temperature.toInt().toString() + ' °C',
                                    style: TextStyle(color: Colors.white, fontSize: 60.0),
                                  ),
                                ],
                                  ),
                                  ),
                                  
                                  //SizedBox(height: 100),
                                  Text(
                                    "$place",
                                    style: TextStyle(color: Colors.white, fontSize: 40.0),
                                  ),
                                  SizedBox(height: 50),
                            SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                for (var i = 0; i < 5; i++)
                                  fiveDaysForecast(
                                      i + 1,
                                      weathercodes1[i],
                                      mintemp1[i],
                                      maxtemp1[i]
                                      ),
                              ],
                            ),
                          ),
                                  
                          ],
                          ),
                     ),

                    ),
              
          ),
    );
  }
}



Widget fiveDaysForecast(
    numberofdays, weathercode, minTemperature, maxTemperature) {
  var time = new DateTime.now();
  var dayincremented = time.add(new Duration(days: numberofdays));
  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(205, 212, 228, 0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              new DateFormat.E().format(dayincremented),
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              new DateFormat.MMMd().format(dayincremented),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: Icon(
                             WeatherIcon.getIcon(weathercode),
                             color: Colors.white,
                              size: 70.0,
                            ),
            ),
            Text(
              'High: ' + maxTemperature.toString() + ' °C',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              'Low: ' + minTemperature.toString() + ' °C',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ],
        ),
      ),
    ),
  );
}