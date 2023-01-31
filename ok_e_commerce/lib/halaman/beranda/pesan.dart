import 'package:flutter/material.dart';

class PesanPage extends StatefulWidget {
  const PesanPage({super.key});

  @override
  State<PesanPage> createState() => _PesanPageState();
}

class _PesanPageState extends State<PesanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Image.asset(
          '../assets/icons/r.png',
          height: 32,
        ),
        title: Container(
          padding: EdgeInsets.only(top: 12.0),
          child: Image.asset(
            '../assets/ren_logo.png',
            alignment: Alignment.bottomCenter,
            height: 100.0,
            width: 100.0,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 12.0, top: 5.0, bottom: 5.0),
            child: Image.asset(
              '../assets/icons/shopping.png',
              height: 32.0,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.green, Colors.blue],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'NOTIFIKASI',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 208, 208),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Promo'),
                      Text(
                        '25 Desember 2022 18:00',
                        style: TextStyle(
                            fontSize: 9.0, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text(
                    'Promo Spesial hari natal dapatkan cashback sebesar 10% untuk semua produk di Ren Commerce \nCek Selengkapnya...',
                    style: TextStyle(fontFamily: 'SonicFont', fontSize: 12.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 208, 208),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Promo'),
                      Text(
                        '24 Desember 2022 12:00',
                        style: TextStyle(
                            fontSize: 9.0, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text(
                    'Promo Desember Spesial menyambut tahun baru dan Puncak perayaan tahu baru \nCek Selengkapnya...',
                    style: TextStyle(fontFamily: 'SonicFont', fontSize: 12.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 208, 208),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Top Up'),
                      Text(
                        '23 Desember 2022 07:00',
                        style: TextStyle(
                            fontSize: 9.0, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text(
                    'Berhasil Isi Saldo Ren Commerce Rp. 50.000 \nCek Selengkapnya..',
                    style: TextStyle(fontFamily: 'SonicFont', fontSize: 12.0),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 208, 208),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Account'),
                      Text(
                        '21 Desember 2022 18:00',
                        style: TextStyle(
                            fontSize: 9.0, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text(
                    'Anda telah berhasil mendaftarkan akun anda, Akun anda sekarang berstatus Premium \nCek Selengkapnya...',
                    style: TextStyle(fontFamily: 'SonicFont', fontSize: 12.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
