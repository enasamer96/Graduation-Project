// ignore_for_file: unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/app.dart';
import 'package:test/Screens/login.dart';
import 'package:test/Screens/therapyApp.dart';

class ChoicesHelper {
  static double succValue = 500;

  static List<int> selectedValues = [];

  static void calculateResults(BuildContext context) {
    if (selectedValues.length < 14) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Please answer all the questions',
            style: TextStyle(color: Colors.white),
          )));
    } else {
      var sum;

      sum = selectedValues.reduce((a, b) => a + b);

      print(sum);

      if (sum >= succValue) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => app()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => therapyapp()));
      }
    }
  }
}
