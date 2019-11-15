import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:resideo_eshopping/model/eshopping_model.dart';
import 'package:resideo_eshopping/util/dbhelper.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

Future<Stream<Product>> getProducts() async {
  final String url = 'https://fluttercheck-5afbb.firebaseio.com/.json?auth=fzAIfjVy6umufLgQj9bd1KmgzzPd6Q6hDvj1r3u1';
 
  final client = http.Client();
  final streamedRest = await client.send(
    http.Request('get', Uri.parse(url))
  );

  return streamedRest.stream
    .transform(utf8.decoder)
    .transform(json.decoder)
    .expand((data) => (data as List))
    .map((data) => Product.fromJSON(data));
}
// List<Product> productslist=List<Product>();

// void listenForProducts() async {
//     final Stream<Product> stream = await getProducts();
//     stream.listen((Product products) =>
//        productslist.add(products));
//     debugPrint(productslist.length.toString());
//   }

//   List<Product> getProductsList(){
//     listenForProducts();
//     List<Product> fromdb=List<Product>();
//     Dbhelper helper = Dbhelper();
//     helper.truncateProductTable();
//     helper.addAllProduct(productslist);
//     fromdb=helper.getProductList();
//     return fromdb;
//   }