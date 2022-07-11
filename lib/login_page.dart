//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_001/utils/routes.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image1.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Welcome to the Login Page",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 30.0),
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
                height: 40.0,
              ),
              ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue, minimumSize: Size(100, 50)),
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.homeRoute);
                  })
            ],
          ),
        ));
  }
}
