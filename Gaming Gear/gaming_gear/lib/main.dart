import 'package:flutter/material.dart';
import 'package:gaming_gear/screen/model/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gaming Gear',
      theme: ThemeData(
        fontFamily: "Raleway",    
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
          bodyText2: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
          headline5: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          button: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ), 
      ),
      home: ProductsScreen(),
    );
  }
}

