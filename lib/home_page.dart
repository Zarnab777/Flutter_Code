import 'package:flutter/material.dart';
import 'package:flutter_application_001/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "For Project";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
            style: TextStyle(
              color: Colors.black,
              
            )),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of Flutter $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
