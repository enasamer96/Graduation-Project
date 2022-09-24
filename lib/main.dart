// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:test/Screens/login.dart';
import 'package:test/Screens/mainscreen.dart';
import 'package:test/Screens/SignUpPage.dart';
import 'package:test/Screens/app.dart';
import 'package:test/Screens/Schedule.dart';
import 'package:test/Screens/All.dart';
import 'package:test/Screens/choices.dart';
import 'package:test/Screens/All2.dart';
import 'package:test/Screens/UPcoming.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/page2.dart';
import 'package:test/Screens/page3.dart';
import 'package:test/Screens/prof.dart';
import 'package:test/Screens/cancele.dart';
import 'package:test/Screens/test.dart';
import 'package:test/Screens/therapy.dart';
import 'package:test/Screens/therapyApp.dart';
import 'package:test/Screens/therapyCalendar.dart';
import 'package:test/animation/m.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainscreen(),
    );
  }
}
