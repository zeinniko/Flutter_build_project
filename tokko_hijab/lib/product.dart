import 'package:flutter/material.dart';

class HijabProduct {
  String image;
  String title;
  String price;
  HijabProduct({required this.image, required this.title, required this.price});
}

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<HijabProduct> _hijabList = [];

  @override
  void initState() {
    super.initState();

    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/ba17a73fcc67f0a9.jpg',
        title: 'Canola Fuchsia',
        price: "Rp. 202.500"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/de46fc065206af49.jpg',
        title: 'Gravel Cream',
        price: "Rp. 202.500"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/92f909ec201b8e05.jpg',
        title: 'Gravel Mint',
        price: "Rp. 202.500"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/599c32ebb9322b04.jpg',
        title: 'Aya',
        price: "Rp. 225.000"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/e89257abc81d4522.jpg',
        title: 'Gravel Lavender',
        price: "Rp. 202.500"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/0b0a4c4c6caf4e11.jpg',
        title: 'Gravel Peach',
        price: "Rp. 202.500"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/9159c099db143e81.jpg',
        title: 'Blue Mosque',
        price: "Rp. 225.000"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/9628d6514cc234bb.jpg',
        title: 'Polka Choco',
        price: "Rp. 225.000"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/b06ce3583bd58212.jpg',
        title: 'Canola Green',
        price: "Rp. 202.500"));
    _hijabList.add(HijabProduct(
        image: 'https://hijab.id/tm_images/produk/thumb/4846737f826c768b.jpg',
        title: 'Japan Olive',
        price: "Rp. 225.000"));
    //Bisa Nambahin produk selanjutnya disini
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
    // _hijabList.add(HijabProduct(image: '', title: '', price: "GO"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HIJAB SUNA',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey),
                    ),
                    child: Text(
                      'Input nama Product',
                      style: TextStyle(color: Colors.grey[300]),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 0),
                      width: 70.0,
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'CARI',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Hijab',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.blue),
                  ),
                  Container(
                    height: 800.0,
                    child: GridView.builder(
                      physics: ClampingScrollPhysics(),
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, position) {
                        return _showProduct(_hijabList[position]);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _showProduct(HijabProduct hijabProduct) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Container(
              child: Image.network(
                hijabProduct.image,
                height: 100.0,
              ),
            ),
          ),
          Text(hijabProduct.title, style: TextStyle(fontSize: 10.0)),
          Text(
            hijabProduct.price,
            style: TextStyle(fontSize: 10.0, color: Colors.blue),
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(color: Colors.green),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    '../assets/icons/whatsapp.png',
                    height: 16.0,
                  ),
                  Text('Whatsapp')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
