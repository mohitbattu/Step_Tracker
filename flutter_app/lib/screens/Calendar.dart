import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:intl/intl.dart';
class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _calController;

  @override
void initState() {
  super.initState();
  _calController = CalendarController();
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
            automaticallyImplyLeading: false,
          title: Text("Calendar",style: new TextStyle(fontFamily: 'Lora',fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
          centerTitle: true,
          toolbarHeight: 30.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
          backgroundColor: Colors.green,
          elevation: 50.0,
        ),
            backgroundColor: const Color(0xFF272525),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:100),
              TableCalendar(
      calendarController: _calController,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        selectedColor: Colors.green,
        todayColor: Colors.red[300],
        outsideWeekendStyle: TextStyle().copyWith(color: Colors.white),
        markersColor: Colors.white,
        outsideDaysVisible: false,
        //weekendStyle: TextStyle().copyWith(color: Colors.purple[800]),
        weekdayStyle: TextStyle().copyWith(color: Colors.white),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle().copyWith(color: Colors.white),
        weekendStyle: TextStyle().copyWith(color: Colors.red),
      ),
      headerStyle: HeaderStyle(
        leftChevronIcon: const Icon(Icons.chevron_left,color: Colors.white),
        rightChevronIcon: const Icon(Icons.chevron_right,color: Colors.white),
        titleTextStyle: TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
        formatButtonTextStyle:
            TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
        formatButtonDecoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    ),
            ])
          )
      ),
    );
  }
}