import 'package:flutter/material.dart';
import 'package:ok_e_commerce/halaman/beranda/home.dart';
import 'package:ok_e_commerce/halaman/beranda/menu/detail_menu/produk_speaker.dart';
import 'package:ok_e_commerce/halaman/halaman_landing.dart';
import 'package:ok_e_commerce/models.dart';

class SpeakerPage extends StatefulWidget {
  const SpeakerPage({super.key});

  @override
  State<SpeakerPage> createState() => _SpeakerPageState();
}

class _SpeakerPageState extends State<SpeakerPage> {
  List<Speaker> _SpeakerList = [];

  @override
  void initState() {
    super.initState();

    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk1.jpg',
        harga: 'Rp. 230.000',
        title: 'Speaker T&G \nNew Style end Era'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk2.jpg',
        harga: 'Rp. 450.000',
        title: 'Speaker  Hopstar \nNEw Serie red A15'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk3.jpg',
        harga: 'Rp. 120.000',
        title: 'Speaker mini yellow \nSerie color yellow'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk4.jpg',
        harga: 'Rp. 710.000',
        title: 'Speaker box 5sounds \ncoorporate'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk5.jpg',
        harga: 'Rp. 740.000',
        title: 'Speaker  Gear tabung \nGear tabung blackwhite'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk6.jpg',
        harga: 'Rp. 1.150.000',
        title: 'Speaker Disco lamp \nGear  colors of white'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk7.jpg',
        harga: 'Rp. 1.140.000',
        title: 'Speaker  Box 2 Sound \nColors hight style'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk8.jpg',
        harga: 'Rp. 1.150.000',
        title: 'Speaker  3Set Sound \nNew Style pack'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk9.webp',
        harga: 'Rp. 820.000',
        title: 'Speaker Package mic end \nSporty pack'));
    _SpeakerList.add(Speaker(
        image: '../assets/produk/speaker/produk10.jpg',
        harga: 'Rp. 100.000',
        title: 'Speaker Mini Oase \nOriginal Product'));
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
            return _tampilanSpeaker(_SpeakerList[position]);
          },
        ),
      ),
    );
  }

  Widget _tampilanSpeaker(Speaker Speaker) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return app_barSpeaker(product: Speaker);
      })),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                Speaker.image,
                height: 143.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Text(
                Speaker.title,
                style: TextStyle(
                    fontFamily: "FlashRogers",
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              child: Text(
                Speaker.harga,
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
