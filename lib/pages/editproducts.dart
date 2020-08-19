import 'package:firebasepractice/providers/product_provider.dart';
import 'package:firebasepractice/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProducts extends StatefulWidget {
  @override
  _EditProductsState createState() => _EditProductsState();
}

class _EditProductsState extends State<EditProducts> {
  @override
  Widget build(BuildContext context) {
    final productProvider=Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Products",
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            TextField(decoration: InputDecoration(hintText: "Product Name"),
            onChanged:(value){
              productProvider.changeName(value);
            } ,
            ),
            TextField(decoration: InputDecoration(hintText: "Product Price"),
            onChanged: (value){
              productProvider.changePrice(value);
            },
            ),
            RaisedButton(
              child: Text("Save"),
              color: Colors.green,
              onPressed: (){
                productProvider.saveProduct();
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              child: Text("Delete"),
              color: Colors.red,
              onPressed: (){

              },
            )
          ],
        )
      ),
    );
  }
}
