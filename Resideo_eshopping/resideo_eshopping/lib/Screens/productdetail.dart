import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resideo_eshopping/model/eshopping_model.dart';
import 'package:resideo_eshopping/util/dbhelper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class ProductDetail extends StatefulWidget
// {
//   @override
//   State<StatefulWidget> createState() {
//     return ProductDetailState();
//   }
    
// }

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}

class ProductDetail extends StatelessWidget
{
  // Dbhelper helper = Dbhelper();
  // int count;
  // List<Product> newproductlist=List<Product>();
  bool _buttonDisabled=false;
  @override
  Widget build(BuildContext context) {
    //Product mobile=Product('Nokia',' ',' ',4000,3,' ','Mobile',5,'good');
    //helper.insertNewProduct(mobile);
    // if(newproductlist == null)
    // {
    //   newproductlist=helper.getProductList();
    // }
    void navigateToCustomerAddress() async{
     Navigator.push(context, MaterialPageRoute(builder: (context)=> classname()));
  }
 
    return Scaffold(
      appBar: AppBar(
        title: Text("Resideo e-Shopping"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                   Text("Men Tshirt",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                   Spacer(),
                   StarDisplay(value: 4,),
                   //Text("Rating",textAlign: TextAlign.right,)             
                ],
                ),
                Text("blue Colour Shirt"),
                SizedBox(height: 20,),
                Image.network("https://firebasestorage.googleapis.com/v0/b/fluttercheck-5afbb.appspot.com/o/preview.jpeg?alt=media&token=586a9c10-6a74-4d23-b357-7b5b3e2376e8"),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                   Icon(FontAwesomeIcons.rupeeSign),
                   Text("675",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                   Spacer(),
                   _getInventory(8),     
                ],
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  textColor: Colors.white,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(),
                  color: Colors.blue,
                  disabledColor: Colors.blueGrey,
                  disabledTextColor: Colors.black,
                  child: Text("Order Now",style: TextStyle(fontSize: 20),),
                  onPressed: _buttonDisabled? null:(){//navigateToCustomerAddress();
                  },
                ),
                SizedBox(height: 20,),
                Text("About This Item",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 10,),
                Text("blue Colour Shirt has a round neck has short sleeves 100 % cotton Machine Wash",style: TextStyle(fontSize: 15),),
                SizedBox(height: 20,),
                Text('Customer Reviews',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 10,),
                Text("Nice shirt",style: TextStyle(fontSize: 15),)
                      
          ],
        ),
          ],
        )
      ),
    );
    
  }
  
  dynamic _getInventory(int quantity){

    if(quantity <=0){
    _buttonDisabled=true;
    return  Text("Out of Stock",style: TextStyle(color: Colors.red,) );
    }
    else
    if (quantity<5)
    return  Text("Only $quantity left",style: TextStyle(color: Colors.red,) );
    else
    return  Text("In Stock",style: TextStyle(color: Colors.green,) );
  }

  
}