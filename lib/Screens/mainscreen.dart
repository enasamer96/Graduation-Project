// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/login.dart';
import 'package:test/Screens/SignUpPage.dart';

void main() {
  runApp(mainscreen());
}

class mainscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: mainscreen(),
        ),
      ),
    );

    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
          image: AssetImage('images/virtue.PNG'),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: deprecated_member_use
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => login()));
              },
              child: Image.asset(
                ('images/start.jpeg'),
                width: 150.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
