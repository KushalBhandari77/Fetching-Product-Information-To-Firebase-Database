import 'package:flutter/material.dart';
import 'package:firebasepractice/pages/editproducts.dart';
class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products",
        style: TextStyle(
          color: Colors.white
        ),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add),
            onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditProducts()));
          },)
        ],
      ),
    );
  }
}
