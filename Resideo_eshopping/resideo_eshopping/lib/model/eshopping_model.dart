class Product{

  int _id;
  String _title;
  String _s_desc;
  String _img;
  int _price;
  int _quantity;
  String _l_desc;
  String _category;
  int _rating;
  String _review;
  String _thumbnail;
  
  Product(this._title,this._s_desc,this._img,this._price,this._quantity,this._l_desc,this._category,this._rating,this._review,this._thumbnail);
  Product.withId(this._id,this._title,this._s_desc,this._img,this._price,this._quantity,this._l_desc,this._category,this._rating,this._review,this._thumbnail);

  int get id => _id;
  String get title => _title;
  String get s_desc => _s_desc;
  String get img => _img;
  int get price => _price;
  int get quantity => _quantity;
  String get l_desc => _l_desc;
  String get category => _category;
  int get rating => _rating;
  String get review => _review;
  String get thumbnail => _thumbnail;

  set title(String newtitle)
  {
    _title=newtitle;
  }

  set s_desc(String new_s_desc){
     _s_desc=new_s_desc;
  }

  set img(String newimg){
    _img=newimg;
  }

  set price(int newprice){
    _price=newprice;
  }

  set quantity(int newquantity){
    _quantity=newquantity;
  }

  set l_desc(String new_l_desc){
    l_desc=new_l_desc;
  }

  set category(String newcategory){
    _category=newcategory;
  }

  set rating(int newrating){
    _rating=newrating;
  }

  set review(String newreview){
    _review=newreview;
  }
  
  set thumbnail(String newthumbnail){
    _thumbnail=newthumbnail;
  }

  Map<String,dynamic> tomap()
  {
    Map<String,dynamic> product_list=Map<String,dynamic>();
    product_list['id']=_id;
    product_list['title']=_title;
    product_list['s_desc']=_s_desc;
    product_list['img']=_img;
    product_list['price']=_price;
    product_list['quantity']=_quantity;
    product_list['l_desc']=_l_desc;
    product_list['category']=_category;
    product_list['rating']=_rating;
    product_list['review']=_review;
    product_list['thumbnail']=_thumbnail;
    return product_list;
  }

  Product.fromObject(dynamic o)
  {
    this._id=o['id'];
    this._title=o['title'];
    this._s_desc=o['s_desc'];
    this._img=o['img'];
    this._price=o['price'];
    this._quantity=o['quantity'];
    this._l_desc=o['l_desc'];
    this._category=o['category'];
    this._rating=o['rating'];
    this._review=o['review'];
    this._thumbnail=o['thumbnail'];
  }

  Product.fromJSON(Map<String, dynamic> jsonMap) :
  _category = jsonMap['Category'],
  _img = jsonMap['Image'],
  _quantity = jsonMap['Inventory'],
  _l_desc = jsonMap['LongDescription'],
  _price = jsonMap['Price'],
  _id = jsonMap['ProductId'],
  _title = jsonMap['ProductName'],
  _rating = jsonMap['Rating'],
  _review = jsonMap['Review'],
  _s_desc = jsonMap['ShortDescription'],
  _thumbnail = jsonMap['Thumbnail'];

}