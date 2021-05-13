import 'package:flutter/material.dart';
import 'package:onlineshoe/pages.dart';

class Kets extends StatefulWidget {
  @override
  _KetsState createState() => _KetsState();
}

class _KetsState extends State<Kets> {
  var produk_list = [
    {
      "name": "Sport Black",
      "picture": "assets/prod/prod1.jpeg",
      "price": "35",
    },
    {
      "name": "Nike Air Force",
      "picture": "assets/prod/prod2.jpeg",
      "price": "50",
    },
    {
      "name": "Convers",
      "picture": "assets/prod/prod3.jpeg",
      "price": "29",
    },
    {
      "name": "New Balance",
      "picture": "assets/prod/prod4.jpeg",
      "price": "20",
    },
    {
      "name": "Nike Joyride Run",
      "picture": "assets/prod/prod5.jpeg",
      "price": "20",
    },
    {
      "name": "Nike DIOR",
      "picture": "assets/prod/prod6.jpeg",
      "price": "20",
    },
    {
      "name": "Sport Pink",
      "picture": "assets/prod/prod7.jpeg",
      "price": "20",
    },
    {
      "name": "Vans Original",
      "picture": "assets/images/ori.vns.jpg",
      "price": "20",
    },
    {
      "name": "Kodachi",
      "picture": "assets/images/kodachi.webp",
      "price": "20",
    },
    {
      "name": "Convers Original",
      "picture": "assets/images/high.convers.jpg",
      "price": "20",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Semua Jenis'),
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
      body: GridView.builder(
          itemCount: produk_list.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Single_prod(
              prod_name: produk_list[index]['name'],
              prod_picture: produk_list[index]['picture'],
              prod_price: produk_list[index]['price'],
            );
          }),
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //untuk memanggil detail produk
                  builder: (context) => new DetailProduk(
                        detail_produk_name: prod_name,
                        detail_produk_new_price: prod_price,
                        detail_produk_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.grey[200],
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover, //grid gambar
                  )),
            ),
          )),
    );
  }
}
