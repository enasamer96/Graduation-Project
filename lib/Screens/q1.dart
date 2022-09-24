// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //runApp method
    home: q1(),
  )); //MaterialApp
}

class q1 extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _q1State createState() => _q1State();
}

class _q1State extends State<q1> {
  bool value = false;

  @override
//App widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ), //IconButton
        ), //AppBar
        body: Center(
          /** Card Widget **/
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 430,
                height: 700,
                child: Column(
                  children: [
                    Text(
                      'Algorithms',
                      style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontSize: 30), //TextStyle
                    ), //Text
                    SizedBox(height: 10),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ), //SizedBox
                        Text(
                          'Library Implementation Of Searching Algorithm: ',
                          style: TextStyle(fontSize: 17.0),
                        ), //Text
                        SizedBox(width: 10), //SizedBox
                        /** Checkbox Widget **/
                        /*		Checkbox(
						value: this.value,
						onChanged: (bool value) {
							setState(() {
							this.value = value;
							});
						},
						), //Checkbox*/
                      ], //<Widget>[]
                    ), //Row
                  ],
                ), //Column
              ), //SizedBox
            ), //Padding
          ), //Card
        ), //Center//Center
      ), //Scaffold
    ); //MaterialApp
  }
}
