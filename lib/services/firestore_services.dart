import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasepractice/models/product.dart';

//below class helps to create object of the value passed in text fields to send it to databse.

class FirestoreService{
  Firestore _db=Firestore.instance;

  Future<void> saveProduct(Product product){
    return _db.collection(('products')).document(product.productId).setData(product.toMap());
  }

  Stream<List<Product>> getProducts(){
   _db.collection('products').snapshots().map((snapshot)=> snapshot.documents.map((document)=>Product.fromFirestore(document.data)).toList);
  }

}