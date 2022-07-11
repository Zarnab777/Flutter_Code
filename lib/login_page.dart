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
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome to the Login Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter UserName ", labelText: "UserName"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password ", labelText: "Password"),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              print("Login Successful");
            })
      ],
    ));
  }
}
