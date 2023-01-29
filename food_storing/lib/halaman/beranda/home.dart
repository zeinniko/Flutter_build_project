import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Welcome,',
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'reni@gmail.com,',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              child: TextFormField(
                decoration: new InputDecoration(
                    hintText: "ada yang bisa kami bantu",
                    labelText: "Cari produk",
                    icon: Icon(Icons.search)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              height: 100.0,
              padding: EdgeInsets.all(10.0),
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          '../images/favorite.png',
                          height: 55.0,
                        ),
                        Text('Favorite')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          '../images/map.png',
                          height: 55.0,
                        ),
                        Text('Location')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          '../images/shopping-online.png',
                          height: 55.0,
                        ),
                        Text('Shopping')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          '../images/store.png',
                          height: 55.0,
                        ),
                        Text('Store')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 200.0,
              width: double.infinity,
              child: Swiper.children(
                autoplay: true,
                children: [
                  Image.asset(
                    '../images/slider1.jpg',
                  ),
                  Image.asset(
                    '../images/slider2.jpg',
                  ),
                  Image.asset(
                    '../images/slider3.webp',
                  ),
                ],
                pagination: SwiperPagination(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
