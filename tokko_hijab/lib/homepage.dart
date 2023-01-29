import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:tokko_hijab/aboutme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutMe()));
              },
              icon: Icon(
                Icons.manage_accounts,
                color: Colors.blue,
              ))
        ],
        backgroundColor: Colors.white,
        title: Text(
          'HIJAB SUNA',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'GRATIS ONGKOS KIRIM dengan pembelian\nminimum Rp. 300.000',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 350.0,
              child: Swiper.children(
                autoplay: true,
                children: [
                  Image.asset('../assets/images/slide1.jpg'),
                  Image.asset('../assets/images/slide2.jpg'),
                  Image.asset('../assets/images/slide3.jpg'),
                  Image.asset('../assets/images/slide4.jpg'),
                ],
                pagination: SwiperPagination(),
                control: SwiperControl(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Column(
                children: [
                  Text(
                    'HIJAB SUNA Collections',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Koleksi Terbaik di Tahun 2022',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset('../assets/images/menu1.jpg'),
                        Container(
                          width: 150.0,
                          padding: EdgeInsets.all(20.0),
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text(
                            'HIJAB',
                            style:
                                TextStyle(color: Colors.blue, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset('../assets/images/menu2.jpg'),
                        Container(
                          width: 150.0,
                          padding: EdgeInsets.all(20.0),
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text(
                            'APPARELS',
                            style:
                                TextStyle(color: Colors.blue, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset('../assets/images/menu3.jpeg'),
                        Container(
                          width: 150.0,
                          padding: EdgeInsets.all(20.0),
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text(
                            'ACCESSORIES',
                            style:
                                TextStyle(color: Colors.blue, fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Fashion Hijab',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 350.0,
                    child: GridView(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              '../assets/images/mode1.jpg',
                              fit: BoxFit.cover,
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255)),
                              child: Text(
                                'Polka Candy Blue',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset('../assets/images/mode2.jpg'),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255)),
                              child: Text(
                                'Polka Candy Sage',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset('../assets/images/mode3.jpg'),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255)),
                              child: Text(
                                'Polka Candy Mint',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset('../assets/images/mode4.jpg'),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255)),
                              child: Text(
                                'Polka Choco',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Busana Muslim',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 350.0,
                    child: GridView(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset('../assets/images/busana1.jpg'),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255)),
                              child: Text(
                                'Ameena Set Cream',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset('../assets/images/busana2.jpg'),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255)),
                              child: Text(
                                'Ameena Set Black',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset('../assets/images/busana3.jpg'),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255)),
                              child: Text(
                                'Ameena Set Sage',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset('../assets/images/busana4.jpg'),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 20.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255)),
                              child: Text(
                                'Gingham Dress Tosca',
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Fashion Hijab Printing Cantik Terbaru hanya di HIJAB.ID',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '     Melalui Hijab.id, kami menyajikan koleksi Kerudung / Hijab Segi Empat yang menjunjung nilai budaya Indonesia dan budaya Islam dalam satu kesatuan untuk melengkapi kebutuhan dasar Wanita Muslim yang berkualitas dan orisinalitas.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '     Selain menghadirkan Printed Scarf / Hijab Printing Terbaru / Model Hijab Terbaru, Hijab.id juga menghadirkan Busana Muslim Modern Kekinian, Voal Plain, Hijab Syar’i dan Aksesoris.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '     Dengan menggabungkan desain yang inovatif dan teknologi tekstil terbaru, kami berkomitmen untuk selalu menghadirkan produk fashion hijab cantik dan pakaian yang nyaman dan cocok untuk digunakan sehari-hari oleh seluruh Wanita Muslim Indonesia. Kami juga membuka reseller hijab (open reseller hijab), bagi siapapun yang ingin berjualan produk hijab kami.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'hijab printing terbaru, model hijab terbaru, hijab cantik, busana muslim modern, fashion hijab kekinian, open reseller hijab',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
