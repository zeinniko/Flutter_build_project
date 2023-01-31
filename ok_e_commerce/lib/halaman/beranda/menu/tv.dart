import 'package:flutter/material.dart';
import 'package:ok_e_commerce/halaman/beranda/home.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/detail_menu/produk_tv.dart';
import 'package:ok_e_commerce/halaman/halaman_landing.dart';
import 'package:ok_e_commerce/models.dart';

class TvPage extends StatefulWidget {
  const TvPage({super.key});

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
  List<Tv> _TvList = [];

  @override
  void initState() {
    super.initState();

    _TvList.add(Tv(
        image: '../assets/produk/tv/produk1.jpg',
        harga: 'Rp. 7.130.000',
        title: 'Tv Pria Converse \nNew Style end Era'));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk2.webp',
        harga: 'Rp. 5.150.000',
        title: 'Tv Pria Converse \nNEw Serie blue A15'));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk3.webp',
        harga: 'Rp. 6.120.000',
        title: 'Tv Wanita Fennding \nSerie color white150'));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk4.webp',
        harga: 'Rp. 5.110.000',
        title: 'Tv  sound live and pack \ncoorporate '));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk5.png',
        harga: 'Rp. 6.140.000',
        title: 'Tv sound hd grafic hight Gear  \nGear shoes blackwhite'));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk6.jpg',
        harga: 'Rp. 7.150.000',
        title: 'Tv 50 inch  \nGear  white of white'));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk7.jpg',
        harga: 'Rp. 5.640.000',
        title: 'Tv rosolution Roboco \nColors hight style'));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk8.jpg',
        harga: 'Rp. 9.150.000',
        title: 'Tv grafict interest \nNew Style pack'));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk9.webp',
        harga: 'Rp. 5.120.000',
        title: 'Tv 4hd film resolution \nSpoon pack'));
    _TvList.add(Tv(
        image: '../assets/produk/tv/produk10.webp',
        harga: 'Rp. 6.130.000',
        title: 'Tv souns effect \nOriginal Product'));
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
            return _tampilanTv(_TvList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanTv(Tv Tv) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return app_barTv(product: Tv);
      })),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Tv.image,
                height: 143.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                Tv.title,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                Tv.harga,
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
