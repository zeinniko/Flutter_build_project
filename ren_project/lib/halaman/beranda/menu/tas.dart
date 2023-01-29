import 'package:flutter/material.dart';
import 'package:ren_project/halaman/beranda/home.dart';
import 'package:ren_project/halaman/beranda/menu/detail_menu/produk_tas.dart';
import 'package:ren_project/halaman/halaman_landing.dart';
import 'package:ren_project/models.dart';

class TasPage extends StatefulWidget {
  const TasPage({super.key});

  @override
  State<TasPage> createState() => _TasPageState();
}

class _TasPageState extends State<TasPage> {
  List<Tas> _TasList = [];

  @override
  void initState() {
    super.initState();

    _TasList.add(Tas(
        image: '../assets/produk/tas/produk1.jpg',
        harga: 'Rp. 130.000',
        title: 'Tas  Converse \nNew Style end Era'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk2.jpg',
        harga: 'Rp. 150.000',
        title: 'Tas Pria Converse \nNEw Serie blue A15'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk3.jpg',
        harga: 'Rp. 120.000',
        title: 'Tas Wanita Fennding \nSerie color white150'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk4.jpeg',
        harga: 'Rp. 110.000',
        title: 'Tas Wanita blue \ncoorporate shoes'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk5.jpg',
        harga: 'Rp. 140.000',
        title: 'Tas Gear Shoes \nGear shoes blackwhite'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk6.jpg',
        harga: 'Rp. 150.000',
        title: 'Tas Wanita kulit \nGear shoes white of white'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk7.jpg',
        harga: 'Rp. 140.000',
        title: 'Tas Wanita Roboco \nColors white hight style'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk8.jpg',
        harga: 'Rp. 150.000',
        title: 'Tas Pria slimp \nNew Style redblack pack'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk9.webp',
        harga: 'Rp. 120.000',
        title: 'Tas Wanita \nSporty  pack'));
    _TasList.add(Tas(
        image: '../assets/produk/tas/produk10.jpg',
        harga: 'Rp. 130.000',
        title: 'Tas Pria softbag \nOriginal Product'));
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
            return _tampilanTas(_TasList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanTas(Tas Tas) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return app_barTas(product: Tas);
      })),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Tas.image,
                height: 143.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                Tas.title,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                Tas.harga,
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
