// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, duplicate_ignore

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page3.dart';

import 'package:test/Screens/therapy.dart';

class therapyapp extends StatefulWidget {
  const therapyapp({Key? key}) : super(key: key);

  @override
  State<therapyapp> createState() => _therapyappState();
}

class _therapyappState extends State<therapyapp> {
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
                        ('images/sch.jpeg'),
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
                            builder: (context) => therapyapp()));
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
