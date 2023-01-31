import 'package:flutter/material.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/baju.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/hoodie.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/laptop.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/phone.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/sepatu.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/speaker.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/tas.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/tv.dart';
import 'package:ok_e_commerce/models.dart';
import 'package:ok_e_commerce/variabel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RenMenu> _menuList = [];
  List<Rekomen> _rekomenList = [];

  @override
  void initState() {
    super.initState();

    _menuList.add(RenMenu(
        image: '../assets/icons/tshirt.png',
        title: "Baju",
        menu: BajuPage(),
        color: renColor.ink));
    _menuList.add(RenMenu(
        image: '../assets/icons/running.png',
        title: "Sepatu",
        menu: SepatuPage(),
        color: renColor.sakura));
    _menuList.add(RenMenu(
        image: '../assets/icons/gift-shop.png',
        title: "Tas",
        menu: TasPage(),
        color: renColor.melon));
    _menuList.add(RenMenu(
        image: '../assets/icons/hoodie.png',
        title: "Hoodie",
        menu: HoodiePage(),
        color: renColor.flash));
    _menuList.add(RenMenu(
        image: '../assets/icons/laptop.png',
        title: "Laptop",
        menu: LaptopPage(),
        color: renColor.flash));
    _menuList.add(RenMenu(
        image: '../assets/icons/smartphone-call.png',
        title: "Handphone",
        menu: PhonePage(),
        color: renColor.melon));
    _menuList.add(RenMenu(
        image: '../assets/icons/sound-system.png',
        title: "Speaker",
        menu: SpeakerPage(),
        color: renColor.sakura));
    _menuList.add(RenMenu(
        menu: TvPage(),
        image: '../assets/icons/tv-monitor.png',
        title: "Televisi",
        color: renColor.ink));

    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk1.jpg',
        harga: 'Rp. 130.000',
        title: 'Sepatu Pria Converse \nNew Style end Era'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk2.jpg',
        harga: 'Rp. 150.000',
        title: 'Sepatu Pria Converse \nNEw Serie blue A15'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk3.jpg',
        harga: 'Rp. 120.000',
        title: 'Sepatu Wanita Fennding \nSerie color white150'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk4.jpg',
        harga: 'Rp. 110.000',
        title: 'Sepatu Wanita Rajut \ncoorporate shoes'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk5.jpg',
        harga: 'Rp. 140.000',
        title: 'Sepatu Pria Gear Shoes \nGear shoes blackwhite'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk6.jpg',
        harga: 'Rp. 150.000',
        title: 'Sepatu Wanita \nGear shoes white of white'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk7.jpg',
        harga: 'Rp. 140.000',
        title: 'Sepatu Wanita Roboco \nColors white hight style'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk8.jpg',
        harga: 'Rp. 150.000',
        title: 'Sepatu Pria Jordan \nNew Style redblack pack'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk9.jpg',
        harga: 'Rp. 120.000',
        title: 'Sepatu Pria Wanita \nSporty shoes pack'));
    _rekomenList.add(Rekomen(
        image: '../assets/produk/sepatu/produk10.jpg',
        harga: 'Rp. 130.000',
        title: 'Sepatu Pria Kulit \nOriginal Product'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Image.asset(
          '../assets/icons/r.png',
          height: 32,
        ),
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
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
        height: 900.0,
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: renColor.bora,
              ),
              child: Column(
                children: [
                  _pencarian(),
                  _promogeser(),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  image: AssetImage("../assets/bg2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  _saldo(),
                  _kategori(),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: renColor.bora)),
              child: Text(
                'Rekomendasi',
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [_rekomendasi()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pencarian() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Theme(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            prefixIcon: Icon(Icons.search),
            fillColor: Color(0xFFF2F4F5),
            hintStyle: TextStyle(color: Colors.grey),
            hintText: "Semua pasti ada!!!",
          ),
          autofocus: false,
        ),
        data: Theme.of(context).copyWith(
          primaryColor: renColor.melon,
        ),
      ),
    );
  }

  Widget _promogeser() {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: Container(
        child: CarouselSlider(
          items: [
            Image.asset(
              "assets/slider01.jpg",
              height: double.infinity,
              width: 500.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/slider02.jpg",
              height: double.infinity,
              width: 500.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/slider03.jpg",
              height: double.infinity,
              width: 500.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/slider04.jpg",
              height: double.infinity,
              width: 500.0,
              fit: BoxFit.cover,
            ),
          ],
          options: CarouselOptions(
            height: 150.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 300),
            viewportFraction: 0.8,
          ),
        ),
      ),
    );
  }

  Widget _saldo() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8.0),
          color: renColor.bora,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    '../assets/icons/wallet.png',
                    height: 32.0,
                  ),
                ),
                Text(
                  'Rp. 50.000',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: "",
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Colors.black),
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Isi Saldo',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontFamily: "SonicFont",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _kategori() {
    return SizedBox(
      width: double.infinity,
      height: 220.0,
      child: Container(
        margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: GridView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: 8,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, position) {
            return _tampilanKategori(_menuList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanKategori(RenMenu renMenu) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => renMenu.menu));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: renColor.bora,
                  border: Border.all(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              padding: EdgeInsets.all(12.0),
              child: Image.asset(
                renMenu.image,
                height: 32.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Text(
              renMenu.title,
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: "FlashRogers",
                fontWeight: FontWeight.bold,
                color: renMenu.color,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _rekomendasi() {
    return SizedBox(
      width: double.infinity,
      height: 150.0,
      child: Container(
        margin: EdgeInsets.only(bottom: 1.0),
        child: GridView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, position) {
            return _tampilanRekomen(_rekomenList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanRekomen(Rekomen rekomen) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              rekomen.image,
              height: 143.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Text(
              rekomen.title,
              style: TextStyle(
                  fontFamily: "FlashRogers",
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            child: Text(
              rekomen.harga,
              style: TextStyle(
                  fontFamily: "FlashRogers",
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
