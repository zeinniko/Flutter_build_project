import 'package:flutter/material.dart';
import 'package:ren_project/variabel.dart';

class KeranjangPage extends StatefulWidget {
  const KeranjangPage({super.key});

  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.green, Colors.white]),
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.shop,
                        color: renColor.bora,
                      ),
                      Text(
                        'Keranjang',
                        style: TextStyle(
                          fontFamily: 'FlashRogers',
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_basket,
                        color: renColor.sakura,
                      ),
                      Text(
                        'Dipesan',
                        style: TextStyle(
                          fontFamily: 'FlashRogers',
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_box,
                        color: renColor.ink,
                      ),
                      Text(
                        'Dikemas',
                        style: TextStyle(
                          fontFamily: 'FlashRogers',
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.send,
                        color: renColor.melon,
                      ),
                      Text(
                        'Dikirim',
                        style: TextStyle(
                          fontFamily: 'FlashRogers',
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.checklist,
                        color: renColor.flash,
                      ),
                      Text(
                        'Berhasil',
                        style: TextStyle(
                          fontFamily: 'FlashRogers',
                          fontSize: 12.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _keranjang(),
            _dipesan(),
            _dikemas(),
            _dikirim(),
            _berhasil(),
          ],
        ),
      ),
    );
  }

  Widget _keranjang() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  '../assets/produk/baju/produk5.jpg',
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    Text('Kaos Distro Bahan tebal \nNew Style Original'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rp. 120.000'),
                        MaterialButton(
                          color: renColor.flash,
                          onPressed: () {},
                          child: Text('Check Out!'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  '../assets/produk/sepatu/produk10.jpg',
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    Text('Sepatu Pria kulit \nOriginal Product'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rp. 150.000'),
                        MaterialButton(
                          color: renColor.flash,
                          onPressed: () {},
                          child: Text('Check Out!'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  '../assets/produk/baju/produk7.jpg',
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    Text('Kaos Distro Bahan tebal \nNColor Experience'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rp. 120.000'),
                        MaterialButton(
                          color: renColor.flash,
                          onPressed: () {},
                          child: Text('Check Out!'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  '../assets/produk/hoodie/produk1.jpg',
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    Text('Hoodie style together \nNew Style Size XL'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rp. 180.000'),
                        MaterialButton(
                          color: renColor.flash,
                          onPressed: () {},
                          child: Text('Check Out!'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  '../assets/produk/hoodie/produk8.jpg',
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    Text('Hoodie Teams Plant \nOver Style Liquid'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rp. 180.000'),
                        MaterialButton(
                          color: renColor.flash,
                          onPressed: () {},
                          child: Text('Check Out!'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  '../assets/produk/laptop/produk7.jpg',
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    Text('Laptop Asus think pad \nLive stabilitationCore i3'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rp. 5.800.000'),
                        MaterialButton(
                          color: renColor.flash,
                          onPressed: () {},
                          child: Text('Check Out!'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.black)),
                child: Image.asset(
                  '../assets/produk/tas/produk1.jpg',
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 250,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Column(
                  children: [
                    Text('Tas Women Color pink - black \nOriginal'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rp. 220.000'),
                        MaterialButton(
                          color: renColor.flash,
                          onPressed: () {},
                          child: Text('Check Out!'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _dipesan() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "../assets/icons/clock.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Belum ada Pesanan!')
          ],
        ),
      ),
    );
  }

  Widget _dikirim() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "../assets/icons/clock.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Belum ada pesanan yang dikirim!')
          ],
        ),
      ),
    );
  }

  Widget _dikemas() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              height: 150.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "../assets/icons/question.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Tidak Ada Data Yang Dimuat!')
          ],
        ),
      ),
    );
  }

  Widget _berhasil() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Color.fromARGB(255, 206, 206, 206)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(3.0),
                  child: Image.asset('../assets/produk/tas/produk1.jpg'),
                ),
                Container(
                  padding: EdgeInsets.all(3.0),
                  child: Text('Tas Women Color pink - black \nOriginal'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('4,3'),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_half,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            '../assets/icons/heart.png',
                            color: Colors.pink,
                            height: 32.0,
                          ),
                          Text('Rp. 220.000')
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
