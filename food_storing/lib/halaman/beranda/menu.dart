import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text('Menu'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Column(
              children: [
                Image.asset(
                  '../images/produk1.jpg',
                  fit: BoxFit.cover,
                  height: 75.0,
                ),
                Text('RP 35,000'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  '../images/produk2.jpg',
                  height: 75.0,
                ),
                Text('RP 35,000'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  '../images/produk3.jpg',
                  fit: BoxFit.cover,
                  height: 75.0,
                ),
                Text('RP 35,000'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  '../images/produk4.webp',
                  fit: BoxFit.cover,
                  height: 75.0,
                ),
                Text('RP 35,000'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  '../images/produk5.webp',
                  fit: BoxFit.cover,
                  height: 75.0,
                ),
                Text('RP 35,000'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  '../images/produk6.jpeg',
                  fit: BoxFit.cover,
                  height: 75.0,
                ),
                Text('RP 35,000'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
