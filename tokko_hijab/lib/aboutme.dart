import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'Tentang Kami',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text('Silakan hubungi kami untuk informasi lebih lanjut:'),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    '../assets/icons/whatsapp.png',
                    height: 32.0,
                  ),
                  Text('CS'),
                  TextButton(
                    onPressed: () {},
                    child: Text(': 0896-5725-4614'),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.blue,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    '../assets/icons/whatsapp.png',
                    height: 32.0,
                  ),
                  Text('OPEN RESELLER'),
                  TextButton(
                    onPressed: () {},
                    child: Text(': 0896-5725-0623'),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.blue,
            ),
            Row(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
                  child: Image.network(
                    'https://lh5.googleusercontent.com/p/AF1QipMiemIo5YBmjIDSjIJki4ZqtpYTASTWIEp-HA5S=w171-h171-n-k-no',
                    height: 100.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text('Hijab Suna'),
                      Text(
                          'Toko Pakaian\nJl. KH. Ahmad Dahlan No.20\nBelanja di toko\n·Ambil di toko\n·Pesan antar')
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Kontak Kami',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.network(
                      'https://hijab.id/tm_images/banner/hc58yttcbrgnqmag.jpg'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.network(
                      'https://hijab.id/tm_images/banner/5ehwapzeaglwtxe8.jpg'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.network(
                      'https://hijab.id/tm_images/banner/72kkgzpcuow7lbax.jpg'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.network(
                      'https://hijab.id/tm_images/banner/zkfzvkgpi1f9vlfp.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
