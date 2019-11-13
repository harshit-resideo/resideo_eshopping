class Products{
  final String category;
  final String image;
  final int inventory;
  final String longDescription;
  final int price;
  final int productId;
  final String productName;
  final int rating;
  final String review;
  final String shortDescription;
  final String thumbnail;

Products.fromJSON(Map<String, dynamic> jsonMap) :
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