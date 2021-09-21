import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/loginscreen.dart';
import 'screens/signupscreen.dart';
import 'screens/dashboard.dart';
import 'screens/cardetails.dart';
import 'screens/photos.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/SignUp': (context) => const SignUp(),
        '/Dashboard': (context) => const Dashboard(),
        '/Cardetails': (context) => const Cardetails(),
        '/Photos': (context) => const Photos(),
      },
    ));
