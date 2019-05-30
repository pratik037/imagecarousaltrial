import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Black Dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return  
    GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: SingleProduct(
              productList[index]['name'],
              productList[index]['picture'],
              productList[index]['old_price'],
              productList[index]['price']),
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPrice;
  final productOldPrice;
  final productPic;

  SingleProduct(this.productName, this.productPic, this.productOldPrice,
      this.productPrice);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$$productPrice",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.red),
                  ),
                  subtitle: Text(
                    "\$$productOldPrice",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black54,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(productPic, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
