import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_001/models/catalog.dart';
import 'package:flutter_application_001/widgets/drawer.dart';
import 'package:flutter_application_001/widgets/item_widget.dart';
import '';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

loadData() async{
  final catalogJSON = await rootBundle.loadString("assets/files/catalog.json");
  final decodedData = jsonDecode(catalogJSON);
  var productsData = decodedData["products"];
  print(productsData);
}

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(25, (index) => CatalogModel.items[0]);

    int days = 30;
    String name = "For Project";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",
            style: TextStyle(
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
