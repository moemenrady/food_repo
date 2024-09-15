// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food/screens/authenticate/login.dart';
import 'package:food/screens/authenticate/sign_up.dart';
import 'package:food/screens/home_page.dart';
import 'package:food/screens/start_page.dart';


void main()  {
  
  runApp(MaterialApp(
    home: const StartPage(),
    debugShowCheckedModeBanner: false,
    routes: {
      "login": (context) {
        return Login();
      },
      "signUp": (context) {
        return SignUp();
      },
      "startPage": (context) {
        return StartPage();
      },
      "homePage": (context) {
        return HomePage();
      }
    },
  ));
}
