import 'package:flutter/material.dart';
import 'package:gaming_gear/constrant.dart';

class SubImageOrder extends StatelessWidget {
  const SubImageOrder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:300, left: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25),
                  ),
                  border: Border(
                    top: BorderSide(width: 3.0, color: blueColor),
                    bottom: BorderSide(width: 3.0, color: blueColor),
                    left: BorderSide(width: 3.0, color: blueColor),
                    right: BorderSide(width: 3.0, color: blueColor),
                  )
                ),
                child: Image.asset("assets/images/controllerblack/front1controllerblack.png",
                height: 75,
                width: 75,
                ),
              )
            ]
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:300, ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: Image.asset("assets/images/controllerblack/sidecontrollerblack.png",
                height: 75,
                width: 75,
                ),
              )
            ]
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:300),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: Image.asset("assets/images/controllerblack/uppercontrollerblack.png",
                height: 75,
                width: 75,
                ),
              )
            ]
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:300, right: 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: Image.asset("assets/images/controllerblack/controllerblackback.png",
                height: 75,
                )
              )
            ]
          )
        ),     
      ]
    );
  }
}