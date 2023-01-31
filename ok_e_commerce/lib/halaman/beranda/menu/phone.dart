import 'package:flutter/material.dart';
import 'package:ok_e_commerce/halaman/beranda/home.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/detail_menu/produk_phone.dart';
import 'package:ok_e_commerce/models.dart';

import '../../halaman_landing.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  List<Phone> _PhoneList = [];

  @override
  void initState() {
    super.initState();

    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk1.jpg',
        harga: 'Rp. 3.130.000',
        title: 'Realme series \nNew green light'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk2.jpg',
        harga: 'Rp. 4.150.000',
        title: 'Realme accent \nNEW Light A15'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk3.jpg',
        harga: 'Rp. 2.120.000',
        title: 'Phone Xiomi seri \nSerie color grey400'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk4.jpg',
        harga: 'Rp. 1.410.000',
        title: 'Phone Samsung smalll body \ncoorporate'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk5.png',
        harga: 'Rp. 3.140.000',
        title: 'Phone Vivo seris \nGear black'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk6.jpg',
        harga: 'Rp. 2.150.000',
        title: 'Phone Vivo \nGear blue of white'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk7.jpg',
        harga: 'Rp. 5.140.000',
        title: 'Phone Vivo Roboco \nColors blue hight style'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk8.jpg',
        harga: 'Rp. 7.150.000',
        title: 'Phone Iqqo 9T \nNew Style 5G pack'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk9.jpg',
        harga: 'Rp. 2.120.000',
        title: 'Phonebronze samsung \nSporty pack'));
    _PhoneList.add(Phone(
        image: '../assets/produk/phone/produk10.png',
        harga: 'Rp. 130.000',
        title: 'Phone pack Vivo \nOriginal Product'));
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
            return _tampilanPhone(_PhoneList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanPhone(Phone Phone) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return app_barPhone(product: Phone);
      })),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Phone.image,
                height: 143.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                Phone.title,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                Phone.harga,
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
