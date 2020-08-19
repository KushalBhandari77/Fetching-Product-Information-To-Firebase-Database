class Product{
  final String productId;
  final String name;
  final double price;

  Product({this.productId,this.name,this.price});


  //Mapping object created for firestore to databse
  Map<String,dynamic> toMap(){
    return {
    'productId':productId,
      'name':name,
      'price':price,
    };
  }

  Product.fromFirestore(Map<String,dynamic> firestore)
  :productId = firestore['productId'],
  name=firestore['name'],
  price=firestore['price'];

}
