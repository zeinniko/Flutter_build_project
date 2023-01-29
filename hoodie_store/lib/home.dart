import 'package:flutter/material.dart';

import 'models.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ListProduk> _produkList = [];

  @override
  void initState() {
    super.initState();

    _produkList.add(ListProduk(
        image: '../assets/produk/1.webp',
        price: "Hoodie Toons",
        title: "Rp. 170.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/2.webp',
        price: "Hoodie Together",
        title: "Rp. 150.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/3.jpg',
        price: "Hoodie GoodNighet",
        title: "Rp. 175.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/4.jpg',
        price: "Hoodie Brown",
        title: "Rp. 160.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/5.jpg',
        price: "Hoodie White",
        title: "Rp. 140.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/6.jpg',
        price: "Hoodie Black",
        title: "Rp. 120.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/7.webp',
        price: "Hoodie Pashion",
        title: "Rp. 140.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/8.webp',
        price: "Hoodie OnlyBatthel",
        title: "Rp. 145.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/9.webp',
        price: "Hoodie BisonBlack",
        title: "Rp. 165.000"));
    _produkList.add(ListProduk(
        image: '../assets/produk/10.webp',
        price: "Hoodie BisonYellow",
        title: "Rp. 190.000"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'HOODIE STORE',
          style:
              TextStyle(color: Colors.white, fontFamily: 'LeagueSpartan-Bold'),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/bg5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 400.0,
              margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: GridView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                itemBuilder: (context, position) {
                  return _daftarproduk(_produkList[position]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _daftarproduk(ListProduk listproduk) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('../assets/bgproduk.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Column(
        children: [
          Image.asset(
            listproduk.image,
            height: 190.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            listproduk.price,
            style: TextStyle(fontFamily: 'LeagueSpartan-Bold'),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            listproduk.title,
            style: TextStyle(fontFamily: 'LeagueSpartan-Bold'),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                child: Icon(Icons.shopping_bag),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.green,
                child: Text(
                  'Pesan',
                  style: TextStyle(
                    fontFamily: 'LeagueSpartan-Bold',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
