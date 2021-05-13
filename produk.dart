import 'package:flutter/material.dart';
import 'package:onlineshoe/pages.dart';

class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  var produk_list = [
    {
      "name": "Adidas",
      "picture": "assets/images/adds.jpg",
      "price": "35",
    },
    {
      "name": "Ventela",
      "picture": "assets/images/ventela.jpg",
      "price": "50",
    },
    {
      "name": "Puma",
      "picture": "assets/images/puma.png",
      "price": "29",
    },
    {
      "name": "Fila",
      "picture": "assets/images/fila.jpg",
      "price": "20",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: produk_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: produk_list[index]['name'],
            prod_picture: produk_list[index]['picture'],
            prod_price: produk_list[index]['price'],
          );
        });
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
