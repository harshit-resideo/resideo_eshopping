import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resideo_eshopping/model/eshopping_model.dart';
import 'package:resideo_eshopping/util/dbhelper.dart';

class ProductDetail extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return ProductDetailState();
  }
    
}

class ProductDetailState extends State<ProductDetail>
{
  Dbhelper helper = Dbhelper();
  int count;
  List<Product> newproductlist=List<Product>();

  @override
  Widget build(BuildContext context) {
    //Product mobile=Product('Nokia',' ',' ',4000,3,' ','Mobile',5,'good');
    //helper.insertNewProduct(mobile);
    if(newproductlist == null)
    {
      newproductlist=helper.getProductList();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Resideo e-Shopping"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                   Text("OnePlus"),
                   Spacer(),
                   Text("Rating",textAlign: TextAlign.right,)
                  //  Padding(
                  //    padding: EdgeInsets.only(left: 15.0),
                  //    child: Text("Rating",textAlign: TextAlign.right,),
                  //  )              
                ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text("OnePlus 7T(Frosted Silver,8GB RAM"),
                ),
          ],
        ),
          ],
        )
      ),
    );
  }

  
  
}