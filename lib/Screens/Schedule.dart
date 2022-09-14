// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, file_names, duplicate_ignore

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
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
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          children: [
            Container(
              // ignore: prefer_const_constructors
              child: Text('Hello',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(
                  left: 0.0, bottom: 0.0, top: 50.0, right: 290),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage('images/pic.jpeg'),
              ),
            ),
            Container(
              // ignore: prefer_const_constructors
              child: Text('Schedule',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(
                  left: 0.0, bottom: 20.0, top: 00.0, right: 260),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                // ignore: deprecated_member_use
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => sychoCalendar()));
                  },
                  child: Image.asset(
                    ('images/test.jpg'),
                    width: 800.0,
                    height: 125.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            Row(
              children: [
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
                            MaterialPageRoute(builder: (context) => All()));
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
          ],
        ));
  }
}
