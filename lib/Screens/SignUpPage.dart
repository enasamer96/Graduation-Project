// ignore_for_file: prefer_const_constructors, sort_child_properties_last,  unused_import

import 'package:flutter/material.dart';
import 'package:test/Screens/login.dart';
import 'package:test/Screens/page1.dart';
import 'package:test/Screens/choices.dart';
import 'package:test/auth_helper.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  DateTime date = DateTime.now();
  bool x = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage('images/logo.PNG'),
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
            controller: AuthHelper.mobileNumController,
            decoration: InputDecoration(hintText: 'Mobile Number'),
          ),
          SizedBox(
            height: 20.0,
          ),

          TextFormField(
            controller: AuthHelper.firstNameController,
            decoration: InputDecoration(hintText: 'First name'),
          ),
          TextFormField(
            controller: AuthHelper.lastNameController,
            decoration: InputDecoration(hintText: 'last name'),
          ),

          SizedBox(
            height: 20.0,
          ),

          // TextFormField(
          //
          //   decoration: InputDecoration(hintText: 'Nationality'),
          // ),
          SizedBox(
            height: 20.0,
          ),

          //***************************************** */

          Text('Birthday',
              style: TextStyle(fontSize: 15.2, color: Colors.black)),
          Row(
            children: [
              Container(
                child: Text(
                  '${date.day}/${date.month}/${date.year}\n\n\n',
                  style: const TextStyle(fontSize: 20),
                ),
                margin: EdgeInsets.only(
                    left: 0.0, bottom: 25.0, top: 10.0, right: 25.0),
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
                    AuthHelper.birthday = newDate;
                  });
                },
              ),
            ],
          ),
          Text('Gender', style: TextStyle(fontSize: 15.2, color: Colors.black)),
          Row(
            children: [
              Checkbox(
                  value: AuthHelper.isMaleSelected,
                  onChanged: (value) {
                    if (value == true) {
                      setState(() {
                        AuthHelper.isMaleSelected = value!;
                        AuthHelper.selectedGender = 1;
                      });
                    } else {
                      AuthHelper.isMaleSelected = false;
                    }
                  }),
              Text('Male',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
              Checkbox(
                  value: AuthHelper.isFemaleSelected,
                  onChanged: (value) {
                    if (value == true) {
                      setState(() {
                        AuthHelper.isFemaleSelected = value!;

                        AuthHelper.selectedGender = 2;
                      });
                    } else {
                      AuthHelper.isFemaleSelected = false;
                    }
                  }),
              Text('Female',
                  style: TextStyle(fontSize: 15.2, color: Colors.black)),
            ],
          ),

          SizedBox(
            height: 20.0,
          ),
          // Text('Password', style: TextStyle(fontSize: 15.2, color: Colors.black)),
          TextFormField(
            controller: AuthHelper.passwordController,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: AuthHelper.confirmPasswordController,
            decoration: InputDecoration(hintText: 'Confirm Password'),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              AuthHelper.signup();
            },
            child: Image.asset(
              ('images/sign.png'),
              width: 70.0,
              height: 50,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          Center(
            child: Text(' Have an account ?',
                style: TextStyle(fontSize: 15.2, color: Colors.black)),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            // ignore: deprecated_member_use
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => login()));
              },
              child: Text(
                'Sign In',
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
