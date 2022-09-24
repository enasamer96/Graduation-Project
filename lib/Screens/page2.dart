// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page3.dart';
import 'package:test/Screens/choices.dart';
import 'package:test/Screens/app.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              // ignore: deprecated_member_use
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => page1()));
                },
                child: Image.asset(
                  ('images/back.jpg'),
                  width: 80.0,
                ),
              ),
            ),
            Image(
              image: AssetImage('images/Photo2.PNG'),
            ),
            Container(
              child: Text('Easy Filteration',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 0.0, bottom: 8.0, top: 30.0),
            ),
            Container(
              child: Text(
                  'It starts with a simple form and based on what you pick you will be placed with Therapists/psychologists to begin your journey',
                  style: TextStyle(fontSize: 20.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 8.0, bottom: 130.0, top: 00.0),
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
                            EdgeInsets.only(left: 8.0, bottom: 0.0, top: 00.0),
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
                            MaterialPageRoute(builder: (context) => page3()));
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
