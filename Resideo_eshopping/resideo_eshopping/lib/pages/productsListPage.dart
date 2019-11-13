import 'package:flutter/material.dart';
import 'package:resideo_eshopping/models/products.dart';
import 'package:resideo_eshopping/repository/products_repository.dart';
import 'package:resideo_eshopping/widgets/products_tile.dart';

class ProductsListPage extends StatefulWidget {
  ProductsListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override 
  _ProductsListPageState createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage>{

  String dropdownValue = 'Categories';
  ScrollController _scrollController = ScrollController();

  final List<Products> _products = <Products>[];

  final List<String> _dropdownValues = [
    "Filter",
    "Male",
    "Female",
    "Kids"
  ];
  String _currentlySelected = " "; 

  @override 
  Widget build(BuildContext context){
    var key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          dropdownWidget(),
        ],
      ),
      body: 

      ListView.builder(
        itemCount: _products.length,
        controller: _scrollController,
        itemBuilder: (context, index) => ProductsTile(_products[index]),
        /*{
          return ListTile(
            title: Text(_products[index]),
          );
        },*/
      ),
      /*
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: _listViewData.reversed.map((data){
                return ListTile(
                  title: Text(data),
                  );
              }).toList(),
              ),
            ),
        ],
        //child: Text(_currentlySelected),
      ),
      */
    );
  }


  Widget dropdownWidget() {
    return DropdownButton(
      items: _dropdownValues
          .map((value) => DropdownMenuItem(
                child: Text(value),
                value: value,
              ))
          .toList(),
      onChanged: (String value) {
        setState(() {
          _currentlySelected = value;
        });
      },
      isExpanded: false,
      value: _dropdownValues.first,
    );
  }

  @override 
  void initState() {
    super.initState();
    listenForProducts();
    _scrollController.addListener(() {
    });
  }

  @override 
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  void listenForProducts() async {
    final Stream<Products> stream = await getProducts();
    stream.listen((Products products) =>
      setState(() => _products.add(products))
      );
  }
}