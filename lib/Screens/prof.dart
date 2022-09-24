// ignore_for_file: camel_case_types, unused_import, prefer_const_constructors, sort_child_properties_last, duplicate_ignore

// ignore_for_file: use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page3.dart';
import 'package:test/Screens/app.dart';
import 'package:test/Screens/Schedule.dart';
import 'package:test/Screens/UPcoming.dart';
import 'package:test/Screens/cancele.dart';
import 'package:test/Screens/prof.dart';
import 'package:test/Screens/All.dart';

class prof extends StatefulWidget {
  const prof({Key? key}) : super(key: key);

  @override
  State<prof> createState() => _profState();
}

class _profState extends State<prof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.0),
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('images/pr.jpg'),
                width: 1000,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 330.0),
                child: Text('Email'),
              ),
              SizedBox(
                height: 1.0,
              ),
              TextFormField(
                decoration:
                    InputDecoration(hintText: 'enas.amer1996@gmail.com'),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 310.0),
                child: Text('0785882374'),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: '+692'),
              ),
              SizedBox(
                height: 120.0,
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
                          ('images/RP.jpeg'),
                          width: 100.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
