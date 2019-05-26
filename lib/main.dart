import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void  main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,

      home: Homepage(),
      
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget imageCarousel = Container(
      height: 200,
      
      child: Carousel(
        boxFit: BoxFit.fitHeight,
        images: [
          AssetImage('images/1.jpg'),
          AssetImage('images/2.jpg'),
          AssetImage('images/3.jpg'),
          AssetImage('images/4.jpg'),
          AssetImage('images/5.jpg'),
          AssetImage('images/6.jpg'),
          AssetImage('images/7.jpg'),
          
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4,
      ),
    );
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('singhalpratik037@gmail.com'),
              accountName: Text('Pratik Singhal'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 5,
                child: Icon(Icons.person, size: 50,),
              ),
            ),

            InkWell(
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.pink,),
                title: Text('Homepage'),
                onTap: (){},
              ),
            ),

            InkWell(
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.pink,),
                title: Text('My Account'),
                onTap: (){},
              ),
            ),

            InkWell(
              child: ListTile(
                leading: Icon(Icons.shopping_basket, color: Colors.pink,),
                title: Text('My Orders'),
                onTap: (){},
              ),
            ),

            InkWell(
              child: ListTile(
                leading: Icon(Icons.dashboard, color: Colors.pink,),
                title: Text('Homepage'),
                onTap: (){},
              ),
            ),

            InkWell(
              child: ListTile(
                leading: Icon(Icons.favorite, color: Colors.pink,),
                title: Text('Favourite'),
                onTap: (){},
              ),
            ),

            Divider(),

            InkWell(
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.grey,),
                title: Text('Settings'),
                onTap: (){},
              ),
            ),

            InkWell(
              child: ListTile(
                leading: Icon(Icons.help, color: Colors.blue,),
                title: Text('About'),
                onTap: (){},
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Myntra"),
        centerTitle: true,
        actions: <Widget>[
           IconButton(icon: Icon(Icons.search), onPressed: (){},),
           IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},)
        ],
      ),
      body: ListView(
        children: <Widget>[
          imageCarousel
        ],
      )
      
      
    );
  }
}