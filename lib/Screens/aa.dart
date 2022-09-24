// ignore_for_file: prefer_const_constructors, sort_child_properties_last, camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:test/Screens/login.dart';
import 'package:test/Screens/page1.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: signup(),
        ),
      ),
    );




















    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
          image: AssetImage('images/logo.PNG'),
        ),
        Text(
          'Welcome To Virtue!',
          style: TextStyle(fontSize: 32.2, color: Colors.black),
        ),
        Text(
          'sign in so you can enjoy all features hidden!',
          style: TextStyle(fontSize: 12.2, color: Colors.grey),
        ),
        //  Image(image: AssetImage('images/hi.png'))
        Row(
          children: [
            Container(
              child: Text('Email',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 20.0, bottom: 20.0, top: 20.0),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              child: Text('Mobile Number ',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 20.0, bottom: 30.0, top: 30.0),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              child: Text('First name',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 20.0, bottom: 40.0, top: 30.0),
            ),
            Container(
              child: Text('last name',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 20.0, bottom: 40.0, top: 30.0),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              child: Text('Nationality',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 20.0, bottom: 25.0, top: 10.0),
            ),
          ],
        ),

        Row(
          children: [
            Container(
              child: Text('Birthdate',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 20.0, bottom: 25.0, top: 10.0),
            ),
            /*Text('${date.day}/${date.month}/${date.year}',
            style: const TextStyle(fontSize:30),
            ),*/
          ],
        ),

        Row(
          children: [
            Container(
              child: Text(
                '${date.day}/${date.month}/${date.year}\n\n\n',
                style: const TextStyle(fontSize: 20),
              ),
              margin: EdgeInsets.only(left: 20.0, bottom: 25.0, top: 10.0),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child:
              Text('select a date', style: const TextStyle(fontSize: 20)),
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );
                if (newDate == null) return;
                setState(() {
                  date = newDate;
                });
              },
            ),
          ],
        ),

        Row(
          children: [
            Container(
              child: Text('Password',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
              margin: EdgeInsets.only(left: 20.0, bottom: 35.0, top: 10.0),
            ),
          ],
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: deprecated_member_use
            child: TextButton(
              onPressed: () {
                runApp(
                  MaterialApp(
                    home: Scaffold(
                      backgroundColor: Colors.white,
                      body: login(),
                    ),
                  ),
                );
              },
              child: Image.asset(
                ('images/sign.png'),
                width: 150.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
