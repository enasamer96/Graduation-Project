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
            Container(
              // ignore: prefer_const_constructors
              child: Text('Hello',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(
                  left: 0.0, bottom: 0.0, top: 50.0, right: 290),
            ),
            Image(
              image: AssetImage('images/pic.jpeg'),
            ),
            Container(
              // ignore: prefer_const_constructors
              child: Text('Schedule Therapy',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(
                  left: 0.0, bottom: 00.0, top: 00.0, right: 240),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, top: 0.0, bottom: 0.0, right: 8.0),
                // ignore: deprecated_member_use
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => therapyCalendar()));
                  },
                  child: Image.asset(
                    ('images/therapy.jpg'),
                    width: 800.0,
                    height: 100.0,
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
                            builder: (context) => therapyAll()));
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