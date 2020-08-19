import 'package:firebasepractice/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebasepractice/pages/products.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ ChangeNotifierProvider(
        create: (context)=>ProductProvider(),
      ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social Media',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home:  Products(),
      ),
    );
  }
}
