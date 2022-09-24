// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, file_names, duplicate_ignore

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page3.dart';
import 'package:test/Screens/app.dart';
import 'package:test/Screens/All.dart';
import 'package:test/Screens/prof.dart';
import 'package:test/Screens/therapyAll.dart';
import 'package:test/Screens/therapyAll2.dart';
import 'package:test/Screens/therapyCalendar.dart';
import 'package:test/Screens/therapyprof.dart';

class therapy extends StatefulWidget {
  const therapy({Key? key}) : super(key: key);

  @override
  State<therapy> createState() => _therapyState();
}

class _therapyState extends State<therapy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 6.0),
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 75, right: 5, left: 13, bottom: 50),
              child: Container(
                // ignore: prefer_const_constructors
                child: Text('Schedule Therapy',
                    style: TextStyle(fontSize: 30.2, color: Colors.black)),
              ),
            ),
            Text(
              'Amman - abu nsair',
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 0.0, bottom: 0.0, right: 8.0),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => therapyCalendar()));
                },
                child: Image.asset(
                  ('images/th1.png'),
                  width: 800.0,
                  height: 100.0,
                ),
              ),
            ),
            Text(
              'Amman - swaileh',
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 0.0, bottom: 0.0, right: 8.0),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => therapyCalendar()));
                },
                child: Image.asset(
                  ('images/th2.png'),
                  width: 800.0,
                  height: 100.0,
                ),
              ),
            ),
            Text(
              'irbid -irbid',
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 0.0, bottom: 0.0, right: 8.0),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => therapyCalendar()));
                },
                child: Image.asset(
                  ('images/th3.png'),
                  width: 800.0,
                  height: 100.0,
                ),
              ),
            ),
            Text(
              'Amman - tabarbour',
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 0.0, bottom: 0.0, right: 8.0),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => therapyCalendar()));
                },
                child: Image.asset(
                  ('images/th4.png'),
                  width: 800.0,
                  height: 100.0,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    // ignore: deprecated_member_use
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => therapy()));
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => therapyAll2()));
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => therapyprof()));
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
