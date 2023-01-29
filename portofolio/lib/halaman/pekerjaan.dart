import 'package:flutter/material.dart';

class Pekerjaan extends StatefulWidget {
  const Pekerjaan({super.key});

  @override
  State<Pekerjaan> createState() => _PekerjaanState();
}

class _PekerjaanState extends State<Pekerjaan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              child: Row(
                children: [
                  Image.asset(
                    '../assets/images/mountain.png',
                    height: 35.0,
                  ),
                  Text('Pemandangan'),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  Image.asset(
                    '../assets/images/fast-food.png',
                    height: 35.0,
                  ),
                  Text('Foods'),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  Image.asset(
                    '../assets/images/working.png',
                    height: 35.0,
                  ),
                  Text('Street'),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  Image.asset(
                    '../assets/images/happy-birthday.png',
                    height: 35.0,
                  ),
                  Text('Event'),
                ],
              ),
            ),
            Tab(
              child: Row(
                children: [
                  Image.asset(
                    '../assets/images/rings.png',
                    height: 35.0,
                  ),
                  Text('Pernikahan'),
                ],
              ),
            ),
          ]),
          title: Text("Work"),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 3,
              children: [
                Image.asset(
                  '../assets/images/foto1.webp',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto4.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto5.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto6.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto7.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto8.jpeg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto9.webp',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            GridView.count(
              crossAxisCount: 3,
              children: [
                Image.asset(
                  '../assets/images/foto37.jpeg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto38.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto39.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto40.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto41.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto42.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto43.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto44.jpeg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto45.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            GridView.count(
              crossAxisCount: 3,
              children: [
                Image.asset(
                  '../assets/images/foto28.webp',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto29.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto30.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto31.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto32.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto33.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto34.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto35.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto36.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            GridView.count(
              crossAxisCount: 3,
              children: [
                Image.asset(
                  '../assets/images/foto10.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto11.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto12.jpeg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto13.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto14.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto15.jpeg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto16.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto17.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto18.webp',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            GridView.count(
              crossAxisCount: 3,
              children: [
                Image.asset(
                  '../assets/images/foto19.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto20.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto21.jpeg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto22.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto23.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto24.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto25.webp',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto26.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  '../assets/images/foto27.webp',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
