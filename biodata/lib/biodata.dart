import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Biodata extends StatefulWidget {
  const Biodata({super.key});

  @override
  State<Biodata> createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('BIODATA KU'),
        leading: Image.asset(
          '../assets/menu.png',
          width: 25.0,
        ),
        actions: [
          Image.asset(
            '../assets/story.png',
            width: 32.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Image.asset(
            '../assets/notification.png',
            width: 32.0,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 255, 213, 85)),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('../assets/story/image4.jpg'),
                    radius: 42.0,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(children: [
                          Image.asset(
                            '../assets/twitter.png',
                            color: Colors.white,
                            height: 16.0,
                          ),
                          Text('Twitter')
                        ]),
                      ),
                      Text('@data'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(children: [
                          Image.asset(
                            '../assets/instagram.png',
                            color: Colors.white,
                            height: 16.0,
                          ),
                          Text('Instagram')
                        ]),
                      ),
                      Text('@data'),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(children: [
                          Image.asset(
                            '../assets/facebook.png',
                            color: Colors.white,
                            height: 16.0,
                          ),
                          Text('Facebook')
                        ]),
                      ),
                      Text('@data'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NAMA   :',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '   DATA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Tempat, Tanggal Lahir  :',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '   DATA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Alamat :',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '   DATA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Text(
              'STORY LIVE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: Colors.redAccent),
              child: CarouselSlider(
                  items: [
                    Image.asset(
                      '../assets/story/image1.webp',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      '../assets/story/image2.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      '../assets/story/image3.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      '../assets/story/image4.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      '../assets/story/image5.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 150.0,
                    aspectRatio: 1 / 2,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            Container(
              height: 500.0,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(
                      'DETAIL INFORMASI',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: Colors.blueGrey,
                    bottom: TabBar(tabs: [
                      Tab(
                        child: Text('Studi'),
                      ),
                      Tab(
                        child: Text('Pengalaman'),
                      ),
                      Tab(
                        child: Text('Sertifikasi'),
                      ),
                    ]),
                  ),
                  body: TabBarView(
                    children: [
                      //INI ISI LAYOUT TAP PERTAMA
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Riwayat Sekolah',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22.0),
                            ),
                            Text(
                              '    Sekolah Dasar\n         SD N Palembang',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '    Sekolah Menengah Pertama\n        SMP N Palembang',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '    Sekolah Menengah Atas\n         SMA N Palembang',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      //INI ISI LAYOUT TAP KEDUA
                      Container(
                        child: Column(
                          children: [
                            Text(
                                'Dari Wikipedia bahasa Indonesia, ensiklopedia bebas Pengalaman ialah hasil persentuhan alam dengan panca indra manusia. Berasal dari kata peng-alam-an. Pengalaman memungkinkan seseorang menjadi tahu dan hasil tahu ini kemudian disebut pengetahuan.[1] Dalam dunia kerja istilah pengalaman juga digunakan untuk merujuk pada pengetahuan dan keterampilan tentang sesuatu yang diperoleh lewat keterlibatan atau berkaitan dengannya selama periode tertentu. Secara umum, pengalaman menunjuk kepada mengetahui bagaimana atau pengetahuan prosedural, daripada pengetahuan proposisional. Pengetahuan yang berdasarkan pengalaman juga diketahui sebagai pengetahuan empirikal atau pengetahuan posteriori. Seorang dengan cukup banyak pengalaman di bidang tertentu dipanggil ahli.')
                          ],
                        ),
                      ),
                      //INI ISI LAYOUT TAP KETIGA
                      GridView.count(
                        crossAxisCount: 1,
                        children: [
                          Image.asset('../assets/sertifikasi/sertifikasi1.png'),
                          Image.asset('../assets/sertifikasi/sertifikasi2.png'),
                          Image.asset('../assets/sertifikasi/sertifikasi3.png'),
                          Image.asset('../assets/sertifikasi/sertifikasi4.png'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
