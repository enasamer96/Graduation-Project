// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, duplicate_ignore, camel_case_types

import 'package:flutter/material.dart';
import 'package:test/Screens/choices.dart';
import 'package:test/Screens/login.dart';

import 'package:test/Screens/page2.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/app.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
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
                      .push(MaterialPageRoute(builder: (context) => page2()));
                },
                child: Image.asset(
                  ('images/back.jpg'),
                  width: 80.0,
                ),
              ),
            ),

            // ignore: prefer_const_constructors
            Image(
              image: AssetImage('images/Photo3.PNG'),
            ),
            Container(
              child: Text('Secured',
                  style: TextStyle(fontSize: 30.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 0.0, bottom: 8.0, top: 30.0),
            ),
            Container(
              child: Text(
                  'We alwars care for our cutomers secunty. All or the therapy sessions are secured & no data Is shared. you can still stan in as annonymous.',
                  style: TextStyle(fontSize: 20.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 8.0, bottom: 100.0, top: 00.0),
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
                                TextStyle(fontSize: 20.2, color: Colors.white)),
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
                            MaterialPageRoute(builder: (context) => Choices()));
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
