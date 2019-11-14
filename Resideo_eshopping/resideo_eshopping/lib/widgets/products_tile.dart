import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resideo_eshopping/models/product.dart';

class ProductsTile extends StatelessWidget {
  final Product _products;
  ProductsTile(this._products);

  @override 
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      ListTile(
        title: Text(_products.productName),
        subtitle: Text(_products.shortDescription),
        leading: Container(
          margin: EdgeInsets.only(left: 6.0),
          child: Image.network(_products.thumbnail, height: 50.0, fit: BoxFit.fill,),
        ),
      ),
      Divider()
    ],
  );

}