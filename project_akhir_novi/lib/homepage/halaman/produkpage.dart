import 'package:flutter/material.dart';
import 'package:project_akhir_novi/list/produk.dart';

class Pemesanan extends StatelessWidget {
  final Products product;
  Pemesanan({required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: product.color,
        title: Text(product.title),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      left: 25, right: 10, top: size.height * 0.12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rating",
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
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
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Size",
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "${product.size} ml",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          product.description,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Keranjang(),
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: product.color,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.thumb_up_outlined,
                              size: 40,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        child: Image.asset(
                          product.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "Harga",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "\Rp${product.price.toString()}",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add_shopping_cart,
                      size: 50,
                      color: product.color,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 280,
                  height: 80,
                  decoration: BoxDecoration(
                      color: product.color,
                      borderRadius: BorderRadius.circular(25)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "CHECK OUT",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  _KeranjangState createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 40,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                if (numOfItems > 1) {
                  numOfItems--;
                }
              });
            },
            child: Icon(Icons.remove),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            numOfItems.toString().padLeft(2, ""),
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          width: 50,
          height: 40,
          child: OutlinedButton(
              onPressed: () {
                setState(() {
                  numOfItems++;
                });
              },
              child: Icon(Icons.add)),
        ),
      ],
    );
  }
}
