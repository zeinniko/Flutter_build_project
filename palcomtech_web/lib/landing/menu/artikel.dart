import 'package:flutter/material.dart';
import 'package:palcomtech_web/widget/drawer.dart';

class Artikel extends StatefulWidget {
  const Artikel({super.key});

  @override
  State<Artikel> createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/images/logo.png',
          height: 55.0,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        centerTitle: true,
      ),
      drawer: DrawerWidget(),
      body: Container(
        margin: EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(onPressed: () {}, child: Text('Beranda')),
                  Text('/ Artikel')
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Text('ARTIKEL'),
            Divider(
              thickness: 1,
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                children: [
                  Card(
                    child: ListTile(
                        leading: Image.asset(
                          '../assets/artikel1.png',
                        ),
                        title: Text(
                            '7 Aplikasi & Website yang berguna bagi Graphic Designer'),
                        subtitle: Text('~ January 16, 2023')),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset(
                        '../assets/artikel2.png',
                        height: 200.0,
                      ),
                      title: Text('Berbagai tren Desain Buat Ide Project Kamu'),
                      subtitle: Text('~ January 3, 2023'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset(
                        '../assets/artikel3.png',
                        height: 200.0,
                      ),
                      title: Text(
                        'Apa itu Dynamic Refresh Rate Di Windows 11 dan Bagaimana cara mengaktifkannya',
                      ),
                      subtitle: Text(
                        '~ January 3, 2023',
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset(
                        '../assets/artikel4.png',
                        height: 200.0,
                      ),
                      title: Text(
                        '10 Situs Bagi Pengembang Web Terasa Ilegal',
                      ),
                      subtitle: Text(
                        '~ Desember 16, 2022',
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Image.asset(
                        '../assets/artikel5.png',
                        height: 200.0,
                      ),
                      title: Text(
                        '5 Website yang Perlu Kamu Ketahui untuk membuat logo',
                      ),
                      subtitle: Text(
                        '~ Desember 9, 2022',
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
