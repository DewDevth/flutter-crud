import 'package:crud_flutter/product_add.dart';
import 'package:crud_flutter/product_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        "/": (context) => const ProductList(),
        "/add-product": (context) => const ProductAddEdit(),
        "/edit-product": (context) => const ProductAddEdit(),
      },
    );
  }
}
