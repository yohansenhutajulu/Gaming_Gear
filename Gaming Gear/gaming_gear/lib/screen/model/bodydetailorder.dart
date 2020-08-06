import 'package:flutter/material.dart';
import 'package:gaming_gear/constrant.dart';
import 'package:gaming_gear/screen/components/dualshock_4_twisted_metal_black.dart';
import 'package:gaming_gear/screen/components/image_order.dart';
import 'package:gaming_gear/screen/components/play.dart';
import 'package:gaming_gear/screen/components/sub_image_order.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.35),
                padding: EdgeInsets.only(top: size.height * 0.25, left: 20),
                height: 500,
                decoration: BoxDecoration(
                  color : greyColor,
                ),
                child: DualShock(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                 child: Column(
                  children: <Widget>[ 
                    Play(),
                  ]
                 )
                ),
              ImageOrder(size: size),
              SubImageOrder(),
              
            ]  
          )
        )
      ]
    )
   ); 
  }
}







