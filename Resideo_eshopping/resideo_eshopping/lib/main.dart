import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:resideo_eshopping/Screens/productdetail.dart';
=======
import 'package:resideo_eshopping/pages/productsListPage.dart';
>>>>>>> UI of screen-1

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resideo e-Shopping',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
<<<<<<< HEAD
      home: ProductDetail(),
=======
      //home: MyHomePage(title: 'Resideo e-Shopping'),
      home: ProductsListPage(title: 'Resideo e-Shopping'),
>>>>>>> UI of screen-1
    );
  }
}