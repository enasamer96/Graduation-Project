// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, file_names, duplicate_ignore

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/All2.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page3.dart';
import 'package:test/Screens/app.dart';
import 'package:test/Screens/All.dart';
import 'package:test/Screens/prof.dart';
import 'package:test/Screens/sychoCalendar.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 75, right: 5, left: 13, bottom: 50),
                      child: Container(
                        // ignore: prefer_const_constructors
                        child: Text('Schedule',
                            style:
                                TextStyle(fontSize: 30.2, color: Colors.black)),
                      ),
                    ),
                    Text(
                      'Amman - Shafa Badran',
                      style: TextStyle(fontSize: 13.0, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => sychoCalendar()));
                        },
                        child: Image.asset(
                          ('images/sy1.png'),
                          width: 800.0,
                          height: 125.0,
                        ),
                      ),
                    ),
                    Text(
                      'Amman - jubeiha',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => sychoCalendar()));
                        },
                        child: Image.asset(
                          ('images/sy2.png'),
                          width: 500.0,
                          height: 125.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'zarqa ',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => sychoCalendar()));
                        },
                        child: Image.asset(
                          ('images/sy3.png'),
                          width: 500.0,
                          height: 125.0,
                        ),
                      ),
                    ),
                    Text(
                      'madaba ',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => sychoCalendar()));
                        },
                        child: Image.asset(
                          ('images/sy4.png'),
                          width: 500.0,
                          height: 125.0,
                        ),
                      ),
                    ),
                    Text(
                      'Amman - tla\' Al-Ali',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => sychoCalendar()));
                        },
                        child: Image.asset(
                          ('images/sy5.png'),
                          width: 500.0,
                          height: 125.0,
                        ),
                      ),
                    ),
                    Text(
                      'Amman - khalda',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => sychoCalendar()));
                        },
                        child: Image.asset(
                          ('images/sy6.png'),
                          width: 500.0,
                          height: 125.0,
                        ),
                      ),
                    ),
                    Text(
                      'Amman - jubeiha',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => sychoCalendar()));
                        },
                        child: Image.asset(
                          ('images/sy7.png'),
                          width: 500.0,
                          height: 125.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                  ]),
            ),
            SizedBox(
              height: 0.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Schedule()));
                        },
                        child: Image.asset(
                          ('images/RH.jpeg'),
                          width: 100.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => All2()));
                        },
                        child: Image.asset(
                          ('images/S.jpeg'),
                          width: 100.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      // ignore: deprecated_member_use
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => prof()));
                        },
                        child: Image.asset(
                          ('images/P.jpeg'),
                          width: 100.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
