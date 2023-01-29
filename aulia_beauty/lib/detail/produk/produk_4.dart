import 'package:flutter/material.dart';

class Produk4 extends StatelessWidget {
  const Produk4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Container(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 150.0,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.pink[300],
                  borderRadius: BorderRadius.circular(5.0)),
              child: Text('Add to Bag'),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image.asset(
                '../assets/icons/love.png',
                height: 30.0,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Image.asset(
                '../assets/icons/bag.png',
                height: 30.0,
              ),
            ),
          ],
        ),
      )),
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        title: Image.asset(
          '../assets/images/logo.png',
          height: 55.0,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              height: 300.0,
              child: ListView(
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Image.network(
                    'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/4059729369239-1_520x.jpg?v=1658912883',
                    height: 50.0,
                  ),
                  Image.network(
                    'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/4059729369239-4_520x.jpg?v=1658912883',
                    height: 50.0,
                  ),
                  Image.network(
                    'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/4059729369239-5_520x.jpg?v=1658912883',
                    height: 50.0,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jurassic World Eyeshadow '),
                      Icon(Icons.share)
                    ],
                  )
                ],
              ),
            ),
            Text('ESSENCE'),
            Row(
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
            Text(
              'Rp 33.000',
              style: TextStyle(color: Colors.pink[300], fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}
