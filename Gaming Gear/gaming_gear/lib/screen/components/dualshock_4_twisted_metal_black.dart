import 'package:flutter/material.dart';
import 'package:gaming_gear/constrant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DualShock extends StatelessWidget {
  const DualShock({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(children: <Widget>[
              Text(
                "Dualshock Ps4 Twisted Metal Black",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 238, top: 10),
                child: Text(
                  "Playstation",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220, top: 10),
                child: SmoothStarRating(
                    color: Colors.amber,
                    borderColor: Colors.amber,
                    rating: 4,
                    ),
              ),
            ]
           ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: 
          Text(
            'The feel, shape, and sensitivity of the dual analog sticks and trigger buttons have been improved to provide a greater sense of control, no matter what you play',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16, 
              fontWeight: FontWeight.w400,
              color: Colors.black,
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "\$ 55",
                      style: Theme.of(context).textTheme.bodyText2
                    ),
                    SizedBox(
                      height: 5,
                      width: 120,
                    ),
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                              ),
                              height: 50, 
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: blueColor,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: -7,
                                  child: SizedBox(
                                    height: 34,
                                    width: size.width - 210,
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "ADD TO CART",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white
                                          )
                                        )
                                      ],
                                    ),
                                  )
                                  )
                              ],
                            ),
                          )
                        ],
                      ) 
                      )
                   ],
                  ),
        ),
      ]
    );
  }
}