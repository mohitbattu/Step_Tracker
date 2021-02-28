import 'package:flutter/material.dart';
import 'package:flutter_app/screens/HomeDesignFlow.dart';
import 'package:flutter_app/screens/Statistics.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  String userid;
   PageController pages = PageController(initialPage: 0);
    getUID() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
     setState(() {
       userid=prefs.getString('uid');
     });
    }
    @override
  void didChangeDependencies() async{
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    await getUID();
  }
    @override
    void initState() { 
      super.initState();
      getUID();
    }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
          backgroundColor: const Color(0xFF272525),
        body: PageView(
          controller: pages,
          children:[
            HomeDesignFlow(index: pages),
            Statistics(),//TODO Create the Statistics of the Everyday steps.
            ]
            ),
        ),
      );
  }
}



