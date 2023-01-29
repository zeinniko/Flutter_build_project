import 'package:flutter/material.dart';
import 'package:ren_project/halaman/beranda/home.dart';
import 'package:ren_project/halaman/beranda/menu/detail_menu/produk_laptop.dart';
import 'package:ren_project/halaman/halaman_landing.dart';
import 'package:ren_project/models.dart';

class LaptopPage extends StatefulWidget {
  const LaptopPage({super.key});

  @override
  State<LaptopPage> createState() => _LaptopPageState();
}

class _LaptopPageState extends State<LaptopPage> {
  List<Laptop> _LaptopList = [];

  @override
  void initState() {
    super.initState();

    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk1.jpg',
        harga: 'Rp. 4.130.000',
        title: 'Laptop Asus \nNew Hdd 1 tera'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk2.jpeg',
        harga: 'Rp. 5.150.000',
        title: 'Laptop Lenove brind \nNEw Serie grey'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk3.jpg',
        harga: 'Rp. 5.120.000',
        title: 'Laptop Asus \nSerie color white150'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk4.jpg',
        harga: 'Rp. 6.110.000',
        title: 'Laptop bleu Lenovo think pad \ncoorporate'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk5.jpg',
        harga: 'Rp. 6.140.000',
        title: 'Laptop Asus A15 touct screen \nGear blackwhite'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk6.jpg',
        harga: 'Rp. 4.150.000',
        title: 'Laptop Asus white \nGear white of white'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk7.jpg',
        harga: 'Rp. 5.140.000',
        title: 'Laptop Roboco \nColors white hight style'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk8.jpg',
        harga: 'Rp. 9.150.000',
        title: 'Laptop Rog gaming \nNew Core i7 pack'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk9.jpg',
        harga: 'Rp. 5.120.000',
        title: 'Laptop Acer body slim \nSporty slim'));
    _LaptopList.add(Laptop(
        image: '../assets/produk/laptop/produk10.jpg',
        harga: 'Rp. 4.330.000',
        title: 'Laptop Ecer core i3 \nOriginal Product'));
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
            return _tampilanLaptop(_LaptopList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanLaptop(Laptop Laptop) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return app_barLaptop(product: Laptop);
      })),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Laptop.image,
                height: 143.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                Laptop.title,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                Laptop.harga,
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
