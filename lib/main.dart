//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_001/home_page.dart';
import 'package:flutter_application_001/login_page.dart';
import 'package:flutter_application_001/pages/cart_page.dart';
import 'package:flutter_application_001/utils/routes.dart';
import 'package:flutter_application_001/widgets/themes.dart';
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
        themeMode: ThemeMode.dark,
        theme: MyTheme.LightTheme(context),
        darkTheme: MyTheme.DarkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: Myroutes.loginRoute,
        routes: {
          "/": (context) => Loginpage(),
          Myroutes.loginRoute: (context) => Loginpage(),
          Myroutes.homeRoute: (context) => HomePage(),
          Myroutes.cartRoute: (context) => CartPage(),
        });
  }
}
