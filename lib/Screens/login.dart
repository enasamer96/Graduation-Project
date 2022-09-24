// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_import, sort_child_properties_last, duplicate_ignore, avoid_print, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test/Screens/choices.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/SignUpPage.dart';
import 'package:test/animation/m.dart';
import 'package:test/auth_helper.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('images/looogo.PNG'),
          ),
          Center(
            child: Text(
              'Welcome To Virtue!',
              style: TextStyle(fontSize: 32.2, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'sign in so you can enjoy all features hidden!',
              style: TextStyle(fontSize: 12.2, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: AuthHelper.emailController,
            decoration: InputDecoration(hintText: 'Email'),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: AuthHelper.passwordController,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              Text('Remember me for future login',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              //AuthHelper.login();

              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => m()));
            },
            child: Image.asset(
              ('images/login.jpeg'),
              width: 70.0,
              height: 50,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text('Forget Password ?',
                style: TextStyle(fontSize: 15.2, color: Colors.black)),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text('Don\'t Have an account ?',
                style: TextStyle(fontSize: 15.2, color: Colors.black)),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            // ignore: deprecated_member_use
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 15.2, color: Color.fromARGB(255, 45, 4, 160)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
