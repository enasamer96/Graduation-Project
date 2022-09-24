// ignore_for_file: unused_import

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AuthHelper {
  late Map<String, dynamic> myMap;

  static late String nationality;
  static late DateTime birthday;
  static late int selectedGender;
  static late bool isMaleSelected = false;
  static late bool isFemaleSelected = false;

  static TextEditingController emailController = TextEditingController();
  static TextEditingController mobileNumController = TextEditingController();
  static TextEditingController firstNameController = TextEditingController();
  static TextEditingController lastNameController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController confirmPasswordController =
      TextEditingController();

  static void login() async {
    try {
      final response = await http.post(
          Uri.parse('http://localhost:8080/account/login'),
          body: jsonEncode({
            "email": emailController.toString(),
            "password": passwordController.toString()
          }),
          headers: {
            "Content-type": "application/json",
            "Accept": "application/json"
          });

      if (response.statusCode == 200) {
        print(response.body);
      }
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  static void signup() async {
    try {
      final response = await http.post(
          Uri.parse('http://localhost:8080/account/signup'),
          body: jsonEncode({
            "firstName": firstNameController.text.toString(),
            "lastName": lastNameController.text.toString(),
            "mobileNumber": mobileNumController.text.toString(),
            "email": emailController.text.toString(),
            "password": passwordController.text.toString(),
            "confirmPassword": confirmPasswordController.text.toString(),
            "birthdate": birthday.toString(),
            "genderId": selectedGender.toString()
          }),
          headers: {
            "Content-type": "application/json",
            "Accept": "application/json"
          });

      if (response.statusCode == 200) {
        print(response.body);
      }
    } catch (error) {
      print(error);
      rethrow;
    }
  }
}
