// ignore_for_file: unused_import, use_key_in_widget_constructors, camel_case_types, sort_child_properties_last, prefer_const_constructors, duplicate_ignore

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test/Screens/login.dart';
import 'package:test/Screens/page2.dart';
import 'package:test/Screens/app.dart';
import 'package:test/Screens/choices.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => login()));
                },
                child: Image.asset(
                  ('images/back.jpg'),
                  width: 80.0,
                ),
              ),
            ),
            Image(
              image: AssetImage('images/Photo1.PNG'),
            ),
            Container(
              // ignore: prefer_const_constructors
              child: Text('Brighter Side',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 0.0, bottom: 8.0, top: 30.0),
            ),
            Container(
              child: Text(
                  'Here in virtue we focus in letting our users get to there brighter side, create your happy self! Explore your self',
                  style: TextStyle(fontSize: 20.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 8.0, bottom: 150.0, top: 00.0),
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
                            MaterialPageRoute(builder: (context) => Choices()));
                      },
                      child: Container(
                        child: Text('Skip',
                            style:
                                TextStyle(fontSize: 20.2, color: Colors.black)),
                        margin:
                            EdgeInsets.only(left: 0.0, bottom: 0.0, top: 00.0),
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
                            MaterialPageRoute(builder: (context) => page2()));
                      },
                      child: Image.asset(
                        ('images/ok.png'),
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
