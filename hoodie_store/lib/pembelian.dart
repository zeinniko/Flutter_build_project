import 'package:flutter/material.dart';

class Pembelian extends StatefulWidget {
  const Pembelian({super.key});

  @override
  State<Pembelian> createState() => _PembelianState();
}

class _PembelianState extends State<Pembelian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'HOODIE STORE',
          style:
              TextStyle(color: Colors.white, fontFamily: 'LeagueSpartan-Bold'),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(157, 19, 34, 165),
              ),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Pilih Product',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan-Bold',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Center(
                  child: Column(
                children: [
                  Image.asset('../assets/icons/empty-box.png'),
                  Text('Tidak ada produk yang dipilih!')
                ],
              )),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(157, 19, 34, 165),
              ),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Pilih Metode Pembayaran',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan-Bold',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(
              '../assets/e-wallet.png',
              width: double.infinity,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(157, 19, 34, 165),
              ),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Pilih Metode Pengiriman',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan-Bold',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(
              '../assets/jasa-kirim.png',
              width: double.infinity,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(157, 19, 34, 165),
              ),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Isi Data Lengkap',
                style: TextStyle(
                  fontFamily: 'LeagueSpartan-Bold',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: new InputDecoration(
                      hintText: "Masukan Nama Lengkap Anda",
                      labelText: "Nama Lengkap",
                      icon: Icon(Icons.people)),
                ),
                TextFormField(
                  decoration: new InputDecoration(
                      hintText: "Masukan Alamat Lengkap Anda",
                      labelText: "Alamat Lengkap",
                      icon: Icon(Icons.home_work)),
                ),
                TextFormField(
                  decoration: new InputDecoration(
                      hintText: "Masukan Nomor Telepon Anda",
                      labelText: "Nomor Telepon",
                      icon: Icon(Icons.phone)),
                ),
                TextButton(onPressed: () {}, child: Text('Submit'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
