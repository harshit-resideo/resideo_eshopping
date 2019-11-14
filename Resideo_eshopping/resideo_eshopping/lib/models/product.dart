class Product{
  String category;
  String image;
  int inventory;
  String longDescription;
  int price;
  int productId;
  String productName;
  int rating;
  String review;
  String shortDescription;
  String thumbnail;

Product.fromJSON(Map<String, dynamic> jsonMap) :
  category = jsonMap['Category'],
  image = jsonMap['Image'],
  inventory = jsonMap['Inventory'],
  longDescription = jsonMap['LongDescription'],
  price = jsonMap['Price'],
  productId = jsonMap['ProductId'],
  productName = jsonMap['ProductName'],
  rating = jsonMap['Rating'],
  review = jsonMap['Review'],
  shortDescription = jsonMap['ShortDescription'],
  thumbnail = jsonMap['Thumbnail'];
}