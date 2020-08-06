import 'package:flutter/material.dart';
import 'package:gaming_gear/constrant.dart';

class Play extends StatelessWidget {
  const Play({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          "PLAY",
          style: TextStyle(
            fontSize: 125,
            foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 6
            ..color = Colors.white12,
          ),
        ),
        Text(
          "PLAY",
          style: TextStyle(
            fontSize: 125,
            color: blueColor,
          ),
        )
      ]
    );
  }
}