// ignore: file_names
// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, duplicate_ignore, file_names

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/All2.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page3.dart';
import 'package:test/Screens/app.dart';
import 'package:test/Screens/Schedule.dart';
import 'package:test/Screens/UPcoming.dart';
import 'package:test/Screens/cancele.dart';
import 'package:test/Screens/prof.dart';

class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          children: [
            Container(
              // ignore: prefer_const_constructors
              child: Text('Hello',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(
                  left: 0.0, bottom: 30.0, top: 50.0, right: 290),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: deprecated_member_use
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => All()));
                    },
                    child: Image.asset(
                      ('images/ALL.jpeg'),
                      width: 100.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: deprecated_member_use
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => UPcoming()));
                    },
                    child: Image.asset(
                      ('images/UP.jpeg'),
                      width: 100.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: deprecated_member_use
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => cancele()));
                    },
                    child: Image.asset(
                      ('images/Cancel.jpeg'),
                      width: 100.0,
                    ),
                  ),
                ),
              ],
            ),
            Image(
              image: AssetImage('images/opps.jpeg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Schedule()));
                },
                child: Container(
                  child: Text('Find me therapists',
                      style: TextStyle(fontSize: 18.2, color: Colors.red)),
                  margin: EdgeInsets.only(
                      left: 90.0, bottom: 0.0, top: 00.0, right: 90),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
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
                        ('images/H.jpg'),
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
                        ('images/RS.jpeg'),
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
