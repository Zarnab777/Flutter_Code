//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_001/home_page.dart';
import 'package:flutter_application_001/login_page.dart';
import 'package:flutter_application_001/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_application_1/pages/home_page.dart';
//import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Homepage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          // primaryTextTheme: GoogleFonts.latoTextTheme()
        ),
        darkTheme: ThemeData(
          // brightness: Brightness.dark,
          primarySwatch: Colors.deepOrange,
        ),
        initialRoute: "/home",
        routes: {
          "/": (context) => Loginpage(),
          Myroutes.loginRoute: (context) => Loginpage(),
          Myroutes.homeRoute: (context) => Homepage(),
        });
  }
}
