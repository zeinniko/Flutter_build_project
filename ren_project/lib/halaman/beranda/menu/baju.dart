import 'package:flutter/material.dart';
import 'package:ren_project/halaman/beranda/home.dart';
import 'package:ren_project/halaman/beranda/menu/detail_menu/produk_baju.dart';
import 'package:ren_project/halaman/halaman_landing.dart';
import 'package:ren_project/models.dart';

class BajuPage extends StatefulWidget {
  const BajuPage({super.key});

  @override
  State<BajuPage> createState() => _BajuPageState();
}

class _BajuPageState extends State<BajuPage> {
  List<Baju> _BajuList = [];

  @override
  void initState() {
    super.initState();

    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk1.jpg',
        harga: 'Rp. 75.000',
        title: 'Baju Pria Polos \nFull 12 Colors'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk2.jpg',
        harga: 'Rp. 130.000',
        title: 'Baju Atasan wanita bloos \nNew maching'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk3.jpg',
        harga: 'Rp. 170.000',
        title: 'Baju Wanita double slim \nSerie color brnb'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk4.jpg',
        harga: 'Rp. 85.000',
        title: 'Baju Wanita Kera atasan \ncoorporate'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk5.jpg',
        harga: 'Rp. 140.000',
        title: 'Baju Pria Kaos Distro \nGear shoes blackcream'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk6.jpg',
        harga: 'Rp. 150.000',
        title: 'Baju Pria Kaos Distro \nGColor black'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk7.jpg',
        harga: 'Rp. 140.000',
        title: 'Baju Pria Kaos Distro \nColors white hight style'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk8.jpg',
        harga: 'Rp. 150.000',
        title: 'Baju wanita swind \nNew Style pack'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk9.jpg',
        harga: 'Rp. 120.000',
        title: 'Baju Wanita \nwomen pretty'));
    _BajuList.add(Baju(
        image: '../assets/produk/baju/produk10.jpg',
        harga: 'Rp. 130.000',
        title: 'Baju Wanita blossom \nOriginal Product'));
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
            return _tampilanBaju(_BajuList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanBaju(Baju Baju) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return app_barBaju(product: Baju);
      })),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Baju.image,
                height: 143.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                Baju.title,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                Baju.harga,
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
