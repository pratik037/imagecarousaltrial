import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category('Shirt', 'images/cats/tshirt.png'),
          Category('Jeans', 'images/cats/jeans.png'),
          Category('Formals', 'images/cats/formal.png'),
          Category('Accessories', 'images/cats/accessories.png'),
          Category('Dress', 'images/cats/dress.png'),
          Category('Informal', 'images/cats/informal.png'),
          Category('Shoe', 'images/cats/shoe.png'),
          ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category( this.image_caption, this.image_location);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        
        child: GestureDetector(
           child:Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
              Image.asset(image_location, height: 100, width:80,),
              Text(image_caption)
             ],
           )
        ) 
        )
    );
  }
}
