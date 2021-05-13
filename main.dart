import 'package:flutter/material.dart';
import 'package:onlineshoe/about.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:onlineshoe/akun.dart';
import 'package:onlineshoe/favorite.dart';
import 'package:onlineshoe/produk.dart';
import 'package:onlineshoe/setting.dart';
import 'package:onlineshoe/ui/datatampil.dart';
import './horizonlist.dart';
import './produk.dart';
import 'package:onlineshoe/ui/entryform.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/iklan7.jpeg'),
          AssetImage('assets/images/iklan.shoe.jpg'),
          AssetImage('assets/images/iklan6.jpg'),
          AssetImage('assets/images/iklan2.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.red,
          title: Text('El-Shoes'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                onPressed: () {}),
            new IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              //header
              new UserAccountsDrawerHeader(
                accountName: Text('Elly Suchahyani'),
                accountEmail: Text('suchahyanielly@gmail.com'),
                currentAccountPicture: new GestureDetector(
                  onTap: () {},
                  child: new CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
              //body
              new ListTile(
                  title: new Text('Akun'),
                  trailing: new Icon(Icons.person_outline_rounded,
                      color: Colors.purple),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => Akun(),
                      ))),
              new ListTile(
                  title: new Text('Favorite'),
                  trailing: new Icon(Icons.favorite_border, color: Colors.red),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => Favorite(),
                      ))),
              new ListTile(
                  title: new Text('Setting'),
                  trailing: new Icon(Icons.settings, color: Colors.green),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => Setting(),
                      ))),
              new ListTile(
                  title: new Text('Form Data'),
                  trailing:
                      new Icon(Icons.date_range_rounded, color: Colors.orange),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DataTampil()));
                  }),
              new ListTile(
                  title: new Text('About'),
                  trailing: new Icon(Icons.help, color: Colors.blue),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext) => About(),
                      ))),
            ],
          ),
        ),
        body: new ListView(
          children: <Widget>[
            //image carousel mulai
            imageCarousel,
            //padding widget
            new Padding(
              padding: const EdgeInsets.all(18.0),
              child: new Text('Categories'),
            ),
            //panggil class horizontal list view
            HorizontalList(),

            new Padding(
              padding: const EdgeInsets.all(24.0),
              child: new Text('New Product'),
            ),

            //grid view
            Container(
              height: 320.0,
              child: Produk(),
            ),
          ],
        ));
  }
}
