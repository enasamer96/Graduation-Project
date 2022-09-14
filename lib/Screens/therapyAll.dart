// ignore: file_names
// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, duplicate_ignore, file_names

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page3.dart';
import 'package:test/Screens/prof.dart';
import 'package:test/Screens/therapy.dart';
import 'package:test/Screens/therapyAll2.dart';
import 'package:test/Screens/therapyUpComing.dart';
import 'package:test/Screens/therapycancele.dart';
import 'package:test/Screens/therapyprof.dart';

class therapyAll extends StatefulWidget {
  const therapyAll({Key? key}) : super(key: key);

  @override
  State<therapyAll> createState() => _therapyAllState();
}

class _therapyAllState extends State<therapyAll> {
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
                        ('images/ALL.jpeg'),
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
                            builder: (context) => therapyUpComing()));
                      },
                      child: Image.asset(
                        ('images/UP.jpeg'),
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
                            builder: (context) => therapycancele()));
                      },
                      child: Image.asset(
                        ('images/Cancel.jpeg'),
                        width: 100.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Image(
              image: AssetImage('images/opps.jpeg'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                // ignore: deprecated_member_use
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => therapyAll2()));
                  },
                  child: Container(
                    child: Text('Find me therapists',
                        style: TextStyle(fontSize: 18.2, color: Colors.red)),
                    margin: EdgeInsets.only(
                        left: 90.0, bottom: 0.0, top: 00.0, right: 90),
                  ),
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
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => therapy()));
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => therapyAll()));
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
