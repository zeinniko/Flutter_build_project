import 'package:flutter/material.dart';
import 'package:ok_e_commerce/halaman/beranda/home.dart';
import 'package:ok_e_commerce/halaman/halaman_landing.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/detail_menu/produk_sepatu.dart';
import 'package:ok_e_commerce/models.dart';
import 'package:ok_e_commerce/variabel.dart';

class SepatuPage extends StatefulWidget {
  const SepatuPage({super.key});

  @override
  State<SepatuPage> createState() => _SepatuPageState();
}

class _SepatuPageState extends State<SepatuPage> {
  List<Sepatu> _SepatuList = [];

  @override
  void initState() {
    super.initState();

    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk1.jpg',
        harga: 'Rp. 130.000',
        title: 'Sepatu Pria Converse \nNew Style end Era'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk2.jpg',
        harga: 'Rp. 150.000',
        title: 'Sepatu Pria Converse \nNEw Serie blue A15'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk3.jpg',
        harga: 'Rp. 120.000',
        title: 'Sepatu Wanita Fennding \nSerie color white150'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk4.jpg',
        harga: 'Rp. 110.000',
        title: 'Sepatu Wanita Rajut \ncoorporate shoes'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk5.jpg',
        harga: 'Rp. 140.000',
        title: 'Sepatu Pria Gear Shoes \nGear shoes blackwhite'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk6.jpg',
        harga: 'Rp. 150.000',
        title: 'Sepatu Wanita \nGear shoes white of white'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk7.jpg',
        harga: 'Rp. 140.000',
        title: 'Sepatu Wanita Roboco \nColors white hight style'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk8.jpg',
        harga: 'Rp. 150.000',
        title: 'Sepatu Pria Jordan \nNew Style redblack pack'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk9.jpg',
        harga: 'Rp. 120.000',
        title: 'Sepatu Pria Wanita \nSporty shoes pack'));
    _SepatuList.add(Sepatu(
        image: '../assets/produk/sepatu/produk10.jpg',
        harga: 'Rp. 130.000',
        title: 'Sepatu Pria Kulit \nOriginal Product'));
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
            return _tampilanSepatu(_SepatuList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanSepatu(Sepatu Sepatu) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return app_barSepatu(product: Sepatu);
      })),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Sepatu.image,
                height: 143.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                Sepatu.title,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                Sepatu.harga,
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
