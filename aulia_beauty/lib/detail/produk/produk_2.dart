import 'package:flutter/material.dart';

class Produk2 extends StatelessWidget {
  const Produk2({super.key});

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
                    'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/3600523823628-1_314ddad8-2e58-4d1d-9a53-54cc8af797a9_520x.jpg?v=1633422092',
                    height: 50.0,
                  ),
                  Image.network(
                    'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/3600523823628-2_6d869a7f-f99c-4640-91aa-15887bc1a47b_520x.jpg?v=1633422092',
                    height: 50.0,
                  ),
                  Image.network(
                    'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/3600523823628-3_670dffeb-1208-4f76-81fb-eaeb11fb79cf_520x.jpg?v=1633422092',
                    height: 50.0,
                  ),
                  Image.network(
                    'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/3600523823628-4_797582a4-e5c2-43ec-8027-6c40479ee514_520x.jpg?v=1633422092',
                    height: 50.0,
                  ),
                  Image.network(
                    'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/3600523823628-6_aecb746b-8347-4aff-a6a7-89bf1e3e2918_520x.jpg?v=1633422092',
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
                      Text('Hyaluron Expert Replumping '),
                      Icon(Icons.share)
                    ],
                  )
                ],
              ),
            ),
            Text("L'OREAL PARIS"),
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
              'Rp 30.000',
              style: TextStyle(color: Colors.pink[300], fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}
