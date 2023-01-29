import 'package:flutter/material.dart';
import 'package:ren_project/halaman/beranda/home.dart';
import 'package:ren_project/halaman/beranda/menu/detail_menu/produk_hoodie.dart';
import 'package:ren_project/halaman/halaman_landing.dart';
import 'package:ren_project/models.dart';

class HoodiePage extends StatefulWidget {
  const HoodiePage({super.key});

  @override
  State<HoodiePage> createState() => _HoodiePageState();
}

class _HoodiePageState extends State<HoodiePage> {
  List<Hoodie> _HoodieList = [];

  @override
  void initState() {
    super.initState();

    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk1.jpg',
        harga: 'Rp. 130.000',
        title: 'Hoodie Together  \nNew Style end Era'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk2.jpg',
        harga: 'Rp. 150.000',
        title: 'Hoodie Black caramel \nNEw Serie blue A15'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk3.webp',
        harga: 'Rp. 120.000',
        title: 'Hoodie White \nSerie color white150'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk4.webp',
        harga: 'Rp. 110.000',
        title: 'Hoodie web toons \ncoorporate shoes'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk5.jpg',
        harga: 'Rp. 140.000',
        title: 'Hoodie Pria Gear caramel\nGear shoes blackwhite'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk6.jpg',
        harga: 'Rp. 150.000',
        title: 'Hoodie White style \nGear shoes white of white'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk7.jpg',
        harga: 'Rp. 140.000',
        title: 'Hoodie oranye couple \nColors white hight style'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk8.jpg',
        harga: 'Rp. 150.000',
        title: 'Hoodie Pria black white \nNew Style redblack pack'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk9.png',
        harga: 'Rp. 120.000',
        title: 'Hoodie Elan Since \nSporty shoes pack'));
    _HoodieList.add(Hoodie(
        image: '../assets/produk/hoodie/produk10.jpg',
        harga: 'Rp. 130.000',
        title: 'Hoodie Hallowin \nOriginal Product'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                colors: [Colors.green, Colors.blue]),
          ),
        ),
        leading: IconButton(
          icon: Image.asset(
            '../assets/icons/left.png',
            height: 32.0,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => halamanLanding()));
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _produk(),
          ],
        ),
      ),
    );
  }

  Widget _produk() {
    return SizedBox(
      width: double.infinity,
      height: 1100.0,
      child: Container(
        margin: EdgeInsets.only(bottom: 1.0),
        child: GridView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, position) {
            return _tampilanHoodie(_HoodieList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanHoodie(Hoodie Hoodie) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return app_barHoodie(product: Hoodie);
      })),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Hoodie.image,
                height: 143.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                Hoodie.title,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                Hoodie.harga,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
