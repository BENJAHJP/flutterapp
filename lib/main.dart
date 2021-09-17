import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/loginscreen.dart';
import 'screens/signupscreen.dart';
import 'screens/dashboard.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/SignUp': (context) => const SignUp(),
        '/Dashboard': (context) => const Dashboard()
      },
    ));
