import 'package:flutter/material.dart';
import 'package:learnify/screen/auth_screen/otp.dart';
import 'package:learnify/screen/auth_screen/phone.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone': (context) => MyPhone(),
      'otp': (context) => Myotp(),
    },
  ));
}
