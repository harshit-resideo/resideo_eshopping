import 'package:flutter/material.dart';
import 'package:resideo_eshopping/pages/productsListPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Resideo e-Shopping'),
      home: ProductsListPage(title: 'Resideo e-Shopping'),
    );
  }
}