import 'package:flutter/material.dart';
import 'package:rahmat/login.dart';

class Product {
  String image;
  String price;
  String title;
  Product({required this.image, required this.price, required this.title});
}

class pesan extends StatefulWidget {
  const pesan({super.key});

  @override
  State<pesan> createState() => _pesanState();
}

class _pesanState extends State<pesan> {
  List<Product> _list = [];

  @override
  void initState() {
    super.initState();

    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
    _list.add(Product(
        image: 'alamatgambar',
        price: 'harga',
        title: "Judul"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pemesanan',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.blueGrey),
        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text('Daftar Product'),
            Container(
              height: 300,
              child: GridView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, position) {
                  return _listProduct(_list[position]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _listProduct(Product product) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (context) {
                  return login();
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              padding: EdgeInsets.all(12.0),
              child: Image.asset('alamat foto')
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0),
          ),
          Text(product.title, style: TextStyle(fontSize: 10.0)),
          Text(product.price, style: TextStyle(fontSize: 10.0, color: Colors.blue)),
        ],
      ),
    );
  }
}
