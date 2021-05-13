import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tentang Aplikasi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            child: Image.asset(
              "assets/images/iklan5.png",
            ),
          ),
          Container(
            child: Text(
              "Layanan Aplikasi Yang Memberikan Kemudahan Untuk Pengguna Dalam Menemukan Sepatu Idamannya Dengan Mudah dan Cepat. Tersedia Dengan Banyak Pilihan Jenis Sepatu, Agar Pengguna Tidak Akan Kebingungan Menemukan Sepatu.",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
