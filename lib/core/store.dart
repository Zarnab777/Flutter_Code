//import 'package:flutter_catalog/models/cart.dart';
//import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_application_001/models/cart.dart';
import 'package:flutter_application_001/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:flutter/material.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
