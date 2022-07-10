//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/login_image1.png",
          fit: BoxFit.cover,
        ),
        Text(
          "Welcome to the Login Page",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ));
  }
}
