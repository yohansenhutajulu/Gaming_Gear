import 'package:flutter/material.dart';
import 'package:gaming_gear/constrant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaming_gear/screen/model/appbar_pageorder.dart';

class ProductsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: greyColor,
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 35, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: greyColor,
                  child: SvgPicture.asset(
                menuIcon,
                height: 25.0,
                width: 25.0,
                ),
              ),
              IconButton (
                onPressed: () {},
                  icon: SvgPicture.asset(
                    searchIcon,
                    height: 22.0,
                    width: 22.0,
                  ),
                )
              ],
            ),
          SizedBox(height: 30),
          Padding(padding: const EdgeInsets.only(bottom: 30),
          child : Text(
            "Welcome to \nGaming Gear Shop", 
            style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, 
            child: Row(
              children: <Widget>[
                CategoryTitle(title:"Controllers", active: true,),
                CategoryTitle(title:"Headsets",),
                CategoryTitle(title:"Keyboards",),
                CategoryTitle(title:"Speakers",),
                ]
              ),
            ),
            Expanded(
              child: Stack(
                children:<Widget>[
              ListView(
                children:<Widget>[
              Body(),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                children: <Widget>[
                Text(
                  "New Arrival",
                  style: kbodyTextStyle,
                ),  
              ]
             )
           ),
             SubBody(press: () {
               Navigator.push(
                 context, 
                 MaterialPageRoute(
                   builder: (context) => DetailScreen(),
                   )
                  );
                 },
                ),
             SubBodyTwo(), 
           ]
          )
         ]
        )
       )
       ]
      )
     ),
     bottomNavigationBar: Container(
       height: 60,
       padding: EdgeInsets.only(left: 20, right: 20),
       child: Container(
       padding: EdgeInsets.only(left: 20, right: 20),
       decoration: BoxDecoration(
           borderRadius: BorderRadius.only(
           topLeft: Radius.circular(10),
           topRight: Radius.circular(10),
         ),
         color: Colors.white,
         boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 10,
            color: Colors.black12.withOpacity(0.38),
          )
         ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: SvgPicture.asset(
              homeIcon, 
              height:24, 
              width: 24, 
              color: blueColor), 
            onPressed: () {}
          ),
            IconButton(icon: SvgPicture.asset(
              heartIcon, 
              height:24, 
              width: 24,
              color: Colors.black12
              ), 
            onPressed: () {}
          ),
            IconButton(icon: Icon(
              Icons.shopping_cart, 
              color: Colors.black12
              ), 
            onPressed: () {}
          ),
          IconButton(icon: SvgPicture.asset(
            userIcon, 
            height:24, 
            width: 24,
            color: Colors.black12
            ), 
            onPressed: () {}
          ),
         ]
        )
       )
      )
    );
  }
}


class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle({
    Key key,
    this.active = false,
    this.title,
  }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(right: 30),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.button.copyWith(
             color: active ? blueColor : oldgreyColor.withOpacity(.4),
            ),
          ),
          Row(children: <Widget>[
           Container(
            margin: EdgeInsets.symmetric(vertical: defaultPadding / 2),
            height: 5,
            width: 40,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: active ? blueColor : Colors.transparent,
              ),
            ),
           Container(
            margin: EdgeInsets.symmetric(vertical: defaultPadding / 2, horizontal: 2),
            height: 5,
            width: 10,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: active ? blueColor : Colors.transparent,
                ),
              )
            ]
          )
         ]
        )
        );
    }
  }

  class Body extends StatelessWidget{
    
    @override 
    Widget build(BuildContext context){
      Size size = MediaQuery.of(context).size;
      return Row(
        children: <Widget>[
        SizedBox(
          height: defaultPadding / 2,
          width: defaultPadding / 8,
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                horizontal: defaultPadding / 2, 
                vertical: defaultPadding, 
              ),
            height: 160,
            child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
               Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: blueColor,
                )
               ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                  Padding(
                    padding: 
                    const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 7),
                  child: Text(
                    "Dualshock PS4 \nBlue ", 
                    style: subHeadingTextStyle,
                    ) 
                   ),
                   IconTheme(
                     data: IconThemeData(
                      color: Colors.amber,
                      size: 20,
                     ),
                   child: StarDisplay(
                      rating: 3.5,
                   )
                  ),
                 Padding(
                    padding: EdgeInsets.only(left: 0, right: 80, top: 10),
                  child: Text(
                    "\$ 60", 
                    style: priceStyle,            
                    )
                   )
                 ]
                )
              )
            ),
            Positioned(
              bottom: -30,
              left: 60,
                child: CustomPaint(
                  size: Size(200, 200),
                  painter: Kpainter(),
                )
             ),
            Positioned(
              bottom: -30,
              left: 100,
                child: CustomPaint(
                  size: Size(200, 200),
                  painter: Lpainter(),
                  )
                ),
            Positioned(
              top: 0,
              right: 0,
              child: RotationTransition(
              turns: AlwaysStoppedAnimation(340 / 360),
              child: Container(
                padding: EdgeInsets.only(bottom: 60, top: 20, left: 20),
                height: 190,
                width: 190,
                child: Image.asset(
                  "assets/images/controllerblue.png",
                  fit: BoxFit.contain,
                )
              )
             )
            ), 
            Positioned(
              left: 281,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:<Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 10,
                  ),
                  decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30.0,
                  ),
                 )
                ]
               ) 
              )
             ]
            )
           )
         ]
        )
       )
      ]
     );
   }  
}

class SubBody extends StatelessWidget{
  const SubBody({
    Key key,
    this.press
  }) : super(key: key);

    final Function press;

    @override 
    Widget build(BuildContext context){
      Size size = MediaQuery.of(context).size;
      return Row(
        children: <Widget>[
        SizedBox(
          height: defaultPadding / 2,
          width: defaultPadding / 8,
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                horizontal: defaultPadding / 2, 
                vertical: defaultPadding, 
              ),
            height: 140,
            child: InkWell(
              onTap: press,
                  child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                 Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  )
                 ),
              Positioned(
                bottom: -30,
                left: 60,
                  child: CustomPaint(
                    size: Size(200, 200),
                    painter: Mpainter(),
                  )
               ),
              Positioned(
                bottom: -30,
                left: 100,
                  child: CustomPaint(
                    size: Size(200, 200),
                    painter: Npainter(),
                    )
                  ),
              Positioned(
                top: 0,
                right: 200,
                child: RotationTransition(
                turns: AlwaysStoppedAnimation(-1 / 360),
                child: Container(
                  padding: EdgeInsets.only(bottom: 60, top: 20, left: 20),
                  height: 230,
                  width: 200,
                  child: Image.asset(
                    "assets/images/controllerblack/frontcontrollerblack.png",
                    fit: BoxFit.contain,
                  )
                )
               )
              ), 
              Positioned(
                left: 281,
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(
                    horizontal: 19,
                    vertical: 10,
                    ),
                    decoration: BoxDecoration(
                    color: yellowColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                    ),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 30.0,
                    ),
                   )
                  ]
                 ) 
                ),
                Positioned(
                bottom: 0,
                left: 125,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[
                    Padding(
                      padding: 
                      const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 7),
                    child: Text(
                      "Dualshock PS4 \nTwisted Metal Black ", 
                      style: Theme.of(context).textTheme.bodyText1,
                      ) 
                     ),
                     IconTheme(
                       data: IconThemeData(
                        color: Colors.amber,
                        size: 20,
                       ),
                     child: StarDisplay(
                        rating: 4,
                     )
                    ),
                   Padding(
                      padding: EdgeInsets.only(left: 0, right: 80, top: 10),
                    child: Text(
                      "\$ 55", 
                      style: Theme.of(context).textTheme.bodyText2,            
                      )
                     ),
                    ]
                   ) 
                  )
                 ),
                ]
               ),
            )
            )
           ]
         )
        )
       ]
     );
   }  
}


class SubBodyTwo extends StatelessWidget{
  
    @override 
    Widget build(BuildContext context){
      Size size = MediaQuery.of(context).size;
      return Row(
        children: <Widget>[
        SizedBox(
          height: defaultPadding / 2,
          width: defaultPadding / 8,
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                horizontal: defaultPadding / 2, 
                vertical: defaultPadding, 
              ),
            height: 140,
            child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
               Container(
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                )
               ),
            Positioned(
              bottom: -30,
              left: 60,
                child: CustomPaint(
                  size: Size(200, 200),
                  painter: Mpainter(),
                )
             ),
            Positioned(
              bottom: -30,
              left: 100,
                child: CustomPaint(
                  size: Size(200, 200),
                  painter: Npainter(),
                  )
                ),
            Positioned(
              top: 0,
              right: 200,
              child: RotationTransition(
              turns: AlwaysStoppedAnimation(-1 / 360),
              child: Container(
                padding: EdgeInsets.only(bottom: 60, top: 20, left: 20),
                height: 190,
                width: 190,
                child: Image.asset(
                  "assets/images/controllerwhite.png",
                  fit: BoxFit.contain,
                )
              )
             )
            ), 
            Positioned(
              left: 281,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:<Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 10,
                  ),
                  decoration: BoxDecoration(
                  color: yellowColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30.0,
                  ),
                 )
                ]
               ) 
              ),
              Positioned(
              bottom: 0,
              left: 125,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                  Padding(
                    padding: 
                    const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 7),
                  child: Text(
                    "Dualshock PS4 \nWhite Light", 
                    style: Theme.of(context).textTheme.bodyText1,
                    ) 
                   ),
                   IconTheme(
                     data: IconThemeData(
                      color: Colors.amber,
                      size: 20,
                     ),
                   child: StarDisplay(
                      rating: 4,
                   )
                  ),
                 Padding(
                    padding: EdgeInsets.only(left: 0, right: 80, top: 10),
                  child: Text(
                    "\$ 50", 
                    style: Theme.of(context).textTheme.bodyText2,            
                    )
                   ),
                  ]
                 ) 
                )
               ),
              ]
             )
            )
           ]
         )
        )
       ]
     );
   }  
}



class Kpainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(10, 10)
      ..lineTo(10, 10)
      ..quadraticBezierTo(0, 100, 190, 170);
    final paint = Paint()
      ..color = Colors.white12
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(path, paint); 
  } 

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  } 
}

class Lpainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(10, 10)
      ..lineTo(10, 10)
      ..quadraticBezierTo(0, 100, 210, 158.1);
    final paint = Paint()
      ..color = Colors.white12
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(path, paint); 
  } 

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  } 
}

class Mpainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(22, 10)
      ..lineTo(30, 10)
      ..quadraticBezierTo(140, 95, 240, 170);
    final paint = Paint()
      ..color = greyColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(path, paint); 
  } 

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  } 
}

class Npainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(22, 10)
      ..lineTo(20, 10)
      ..quadraticBezierTo(160, 120, 210, 150);
    final paint = Paint()
      ..color = greyColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(path, paint); 
  } 

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  } 
}


class StarDisplay extends StatelessWidget {
  final int starCount;
  final double rating;
  final Color color;

  StarDisplay({this.starCount = 5,this.rating = .0,this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = new Icon(
           Icons.star,
           color: oldgreyColor  
        );
    }

    else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: Colors.amber,
        );
    }

    else {
      icon = new Icon(
        Icons.star,
        color: Colors.amber,
        );
    }

    return new InkResponse(
      child: icon,
    );
  }

  @override 
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.only(left: 45, top: 10),
      child: Row(
      children: new List.generate(starCount, (index) => buildStar(context, index)
      )
     )
    );
  }
}




