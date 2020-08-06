import 'package:flutter/material.dart';

class ImageOrder extends StatelessWidget {
  const ImageOrder({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(top: 30),
      child: Row(
        children: <Widget>[
          Expanded(
           child: Image.asset(
           "assets/images/controllerblack/frontcontrollerblack.png",
           height: size.height * 0.5,
           )
          )
        ],
      ),
    );
  }
}