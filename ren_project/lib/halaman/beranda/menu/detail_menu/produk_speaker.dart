import 'package:flutter/material.dart';
import 'package:ren_project/models.dart';
import 'package:ren_project/variabel.dart';

class app_barSpeaker extends StatelessWidget {
  final Speaker product;
  app_barSpeaker({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(onTap: () {
        Navigator.pop(context);
      }),
      body: Pemesanan(product: product),
    );
  }

  buildAppBar({required onTap}) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
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
        leading: IconButton(
          icon: Image.asset(
            '../assets/icons/left.png',
            height: 32.0,
          ),
            onPressed: onTap,
          ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}

class Pemesanan extends StatelessWidget {
  final Speaker product;
  Pemesanan({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0)),
            padding: EdgeInsets.all(16.0),
            child: Image.asset(
              product.image,
              height: 300.0,
              width: 300.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage("../assets/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color.fromARGB(255, 227, 226, 226)),
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Harga :',
                        style: TextStyle(
                          fontFamily: 'FlashRogers',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        product.harga,
                        style: TextStyle(
                          fontFamily: 'FlashRogers',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color.fromARGB(255, 227, 226, 226)),
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontFamily: 'FlashRogers',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color.fromARGB(255, 227, 226, 226)),
                  padding: EdgeInsets.all(16.0),
                  child: Text(product.title),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color.fromARGB(255, 227, 226, 226),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: _BottomAppBar(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _BottomAppBar() {
    return Container(
      height: 100.0,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0), color: renColor.bora),
            child: Image.asset(
              '../assets/icons/shopping-cart.png',
              height: 28,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: renColor.flash,
            ),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                'Check Out',
                style: TextStyle(
                  fontFamily: 'FlashRogers',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 2.0,
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: renColor.bora,
            ),
            child: MaterialButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'Tambahkan',
                    style: TextStyle(
                      fontFamily: 'FlashRogers',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    '../assets/icons/shopping-cart.png',
                    height: 28.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
