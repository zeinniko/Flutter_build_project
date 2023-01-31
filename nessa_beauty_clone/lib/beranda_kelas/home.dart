import 'dart:ui';

import 'package:nessa_beauty_clone/detail/recomended.dart';
import 'package:nessa_beauty_clone/widget/appbar.dart';
import 'package:nessa_beauty_clone/widget/footer.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AuliaAppBar(),
        body: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.pink[300]),
                child: Text(
                  '🚗 Free Shipping For Orders Above 99 AED 🚗',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                height: 250.0,
                child: Swiper.children(
                  children: [
                    Image.network(
                      'https://cdn.nessa.com/The_Ordinary_Mobile_min_b18307c1b0/The_Ordinary_Mobile_min_b18307c1b0.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://cdn.nessa.com/Anastasia_Mobile_min_0d82d18257/Anastasia_Mobile_min_0d82d18257.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://cdn.nessa.com/K_beauty_mobile_3466c691ea/K_beauty_mobile_3466c691ea.gif',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://cdn.nessa.com/Minimalist_New_Mobile_2_min_c052a9766d/Minimalist_New_Mobile_2_min_c052a9766d.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://cdn.nessa.com/Huda_Beauty_Mobile_min_9485c19835/Huda_Beauty_Mobile_min_9485c19835.jpg',
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://cdn.nessa.com/Olaplex_mobile_min_32d95e128f/Olaplex_mobile_min_32d95e128f.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                  pagination: SwiperPagination(),
                ),
              ),
              Text(
                'SHOP BY CATEGORIES',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Recomended()));
                },
                child: Container(
                  height: 150.0,
                  child: GridView(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1),
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Bath_Body.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Bath Body',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Fragrances.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Fragrances',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Gifting.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Gifting',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Haircare.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Haircare',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Korean_Beauty.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Korean_Beauty',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Make_up.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Make_up',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Men.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Men',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/New_Arrivals.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'New_Arrivals',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Skin_Care.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Skin_Care',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10.0),
                            child: Image.asset(
                                '../assets/images/category/Tools_Brushes.jpg'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Tools_Brushes',
                              textAlign: TextAlign.center,
                              style: TextStyle(backgroundColor: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Image.asset('../assets/images/2022.png'),
              ),
              Text(
                'JUST IN',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Products to look out for this season.',
                textAlign: TextAlign.center,
              ),
              Container(
                height: 270.0,
                child: Swiper.children(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  '../assets/images/produk/produk1.jpg',
                                  height: 150.0,
                                ),
                                Text(
                                  'THE BALM',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  'Anne. T Dotes...',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Text(
                                  'Rp 45.000',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add to bag',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  color: Colors.black,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.pink[300],
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Text(
                                    'Express',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  '../assets/images/produk/produk2.jpg',
                                  height: 150.0,
                                ),
                                Text(
                                  'PHILIP KINGSLEY',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  'Moisture Extreme...',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Text(
                                  'Rp 125.000',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add to bag',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  color: Colors.black,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.pink[300],
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Text(
                                    'Express',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  '../assets/images/produk/produk3.jpg',
                                  height: 150.0,
                                ),
                                Text(
                                  'THE ORDINARY',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  'Azelaic Acid',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Text(
                                  'Rp 50.000',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add to bag',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  color: Colors.black,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.pink[300],
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Text(
                                    'Express',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  '../assets/images/produk/produk4.jpg',
                                  height: 150.0,
                                ),
                                Text(
                                  'Essence',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  'Lash Like a Bos...',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Text(
                                  'Rp 35.000',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Add to bag',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  color: Colors.black,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.pink[300],
                                  ),
                                  child: Text(
                                    'Express',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                        'https://cdn.nessa.com/Mad_hippie_Mobile_min_25ef495569/Mad_hippie_Mobile_min_25ef495569.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Christian_Laurent_Mobile_min_5bbd0dc629/Christian_Laurent_Mobile_min_5bbd0dc629.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/EOS_Mobile_min_91336f1022/EOS_Mobile_min_91336f1022.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Butter_London_Mobile_min_38a8fc3b7d/Butter_London_Mobile_min_38a8fc3b7d.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Refferal_dubai_mobile_min_725649d248/Refferal_dubai_mobile_min_725649d248.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Bioderma_mobile_min_f451fab8ad/Bioderma_mobile_min_f451fab8ad.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Garnier_Mobile_min_8c539fd3c4/Garnier_Mobile_min_8c539fd3c4.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Plum_mobile_min_4143ce355a/Plum_mobile_min_4143ce355a.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Pestle_and_Mortar_Mobile_min_7cb613eb3a/Pestle_and_Mortar_Mobile_min_7cb613eb3a.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Avene_Mobile_min_0d60afbfd0/Avene_Mobile_min_0d60afbfd0.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Catrice_Mobile_min_ce946ebdd8/Catrice_Mobile_min_ce946ebdd8.jpg'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        'https://cdn.nessa.com/Maybelline_Mobile_min_f1bfa86154/Maybelline_Mobile_min_f1bfa86154.jpg'),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              FooterAulia()
            ],
          ),
        ),
      ),
    );
  }
}
