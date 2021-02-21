import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class Statistics extends StatefulWidget {
  var goal;
  var currentsteps;
  Statistics({this.goal,this.currentsteps});
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  int mon=0,tue=0,wed=0,thu=0,fri=0,sat=0,sun=0;

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
              maxY: widget.goal,
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
                      BarChartRodData(y: mon.toDouble(), colors: [Colors.lightBlueAccent, Colors.greenAccent])
                    ],
                    showingTooltipIndicators: [0],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(y: tue.toDouble(), colors: [Colors.lightBlueAccent, Colors.greenAccent])
                    ],
                    showingTooltipIndicators: [0],
                  ),
                  BarChartGroupData(
                    x: 2,
                    barRods: [
                      BarChartRodData(y: wed.toDouble(),colors: [Colors.lightBlueAccent, Colors.greenAccent])
                    ],
                    showingTooltipIndicators: [0],
                  ),
                  BarChartGroupData(
                    x: 3,
                    barRods: [
                      BarChartRodData(y: thu.toDouble(), colors: [Colors.lightBlueAccent, Colors.greenAccent])
                    ],
                    showingTooltipIndicators: [0],
                  ),
                  BarChartGroupData(
                    x: 4,
                    barRods: [
                      BarChartRodData(y: fri.toDouble(), colors: [Colors.lightBlueAccent, Colors.greenAccent])
                    ],
                    showingTooltipIndicators: [0],
                  ),
                  BarChartGroupData(
                    x: 5,
                    barRods: [
                      BarChartRodData(y: sat.toDouble(), colors: [Colors.lightBlueAccent, Colors.greenAccent])
                    ],
                    showingTooltipIndicators: [0],
                  ),
                   BarChartGroupData(
                    x: 6,
                    barRods: [
                      BarChartRodData(y: sun.toDouble(), colors: [Colors.lightBlueAccent, Colors.greenAccent])
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
 
      );
  }
}