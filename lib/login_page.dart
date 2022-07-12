//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_001/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()){
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, Myroutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  "Welcome $name",
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
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Username cann't be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter Password ",
                              labelText: "Password"),
                          validator: (String? value) {

                        if (value!.isEmpty) {
                            return "Password cann't be empty";
                          }
                         else  if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                            // if (value != null && value.isEmpty) {
                            //   if (value.length < 6) {
                            //     return "Password length should be atleast 6";
                            //   } else {
                            //     return null;
                            //   }
                            // } else {
                            //   return "Password cannot be empty";
                            // }
                          
                          ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(changeButton ? 20 : 8),
                  child: InkWell(
                    // splashColor: Colors.red,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 100,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),

                      //shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                    ),
                  ),
                ),

                // ElevatedButton(
                // child: Text("Login"),
                // style: TextButton.styleFrom(
                //   backgroundColor: Colors.blue, minimumSize: Size(100, 50)),
                //onPressed: () {
                // Navigator.pushNamed(context, Myroutes.homeRoute);
                //}
              ],
            ),
          ),
        ));
  }
}
