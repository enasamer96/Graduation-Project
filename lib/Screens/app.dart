// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, duplicate_ignore

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/All.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page3.dart';
import 'package:test/Screens/app.dart';

import 'package:test/Screens/Schedule.dart';
import 'package:test/Screens/sychoCalendar.dart';

class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          children: [
            Container(
              // ignore: prefer_const_constructors
              child: Text('Hello',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(
                  left: 0.0, bottom: 8.0, top: 70.0, right: 290),
            ),
            Image(
              image: AssetImage('images/pic.jpeg'),
            ),
            Container(
              // ignore: prefer_const_constructors
              child: Text('Appointments',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(
                  left: 8.0, bottom: 8.0, top: 30.0, right: 150),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 55, right: 8, bottom: 0, top: 7),
                child: Text("Schedule",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 120, right: 8, bottom: 0, top: 8),
                child: Text("track",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
            ]),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, bottom: 8, top: 0),
                    // ignore: deprecated_member_use
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => All()));
                      },
                      child: Image.asset(
                        ('images/sch.jpeg'),
                        width: 100.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    // ignore: deprecated_member_use
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => sychoCalendar()));
                      },
                      child: Image.asset(
                        ('images/track.jpeg'),
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
