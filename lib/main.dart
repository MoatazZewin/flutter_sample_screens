import 'package:first_project/modules/bmi/bmi_calculator.dart';
import 'package:first_project/modules/counter/counter_screen.dart';
import 'package:first_project/modules/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }


}