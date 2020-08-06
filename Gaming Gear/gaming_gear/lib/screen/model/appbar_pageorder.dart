import 'package:flutter/material.dart';
import 'package:gaming_gear/screen/model/bodydetailorder.dart';
import 'package:gaming_gear/constrant.dart';

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: blueColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          ), 
        onPressed: () => Navigator.pop(context),
        ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite_border
          ), 
        onPressed: () {},
        ),
      ],
    );
  }
}