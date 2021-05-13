import 'package:flutter/material.dart';
import 'package:onlineshoe/kets.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categori(
            image_location: 'assets/images/iconK2.png',
            image_caption: 'All Product',
          ),
          Categori(
            image_location: 'assets/images/iconP1.png',
            image_caption: 'Women',
          ),
          Categori(
            image_location: 'assets/images/iconL1.jpg',
            image_caption: 'Men',
          ),
          Categori(
            image_location: 'assets/images/anak.png',
            image_caption: 'Children',
          ),
          Categori(
            image_location: 'assets/images/iconS1.png',
            image_caption: 'Sport',
          ),
          Categori(
            image_location: 'assets/images/iconK1.png',
            image_caption: 'Socks',
          ),
        ],
      ),
    );
  }
}

class Categori extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Categori({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => Kets()));
        },
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 50.0,
              height: 50.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_caption,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
