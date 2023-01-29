import 'package:aulia_beauty/widget/appbar.dart';
import 'package:aulia_beauty/widget/footer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:aulia_beauty/detail/produk/produk_1.dart';
import 'package:aulia_beauty/detail/produk/produk_2.dart';
import 'package:aulia_beauty/detail/produk/produk_3.dart';
import 'package:aulia_beauty/detail/produk/produk_4.dart';

class Recomended extends StatefulWidget {
  const Recomended({super.key});

  @override
  State<Recomended> createState() => _RecomendedState();
}

class _RecomendedState extends State<Recomended> {
  final List<String> relative = [
    'Price Low',
    'Price High',
    'Most Popular',
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AuliaAppBar(),
        body: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.pink[300]),
                child: Text(
                  '🚗 Free Shipping For Orders Above 99 AED 🚗',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.swipe_left),
              ),
              Image.network(
                  'https://cdn.nessa.com/1_Makeup_min_a44088e2ed/1_Makeup_min_a44088e2ed.png'),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Products Recomended'),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.pink[300],
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Text('Express'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Row(
                            children: [
                              Icon(Icons.menu_open),
                              Text('Filter'),
                            ],
                          ),
                        ),
                        Container(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              hint: Text(
                                'Customer Service',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                              items: relative
                                  .map((relative) => DropdownMenuItem<String>(
                                      value: relative,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          relative,
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                              buttonHeight: 40,
                              buttonWidth: 150,
                              itemHeight: 40,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              Container(
                height: 300,
                child: GridView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Produk1()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Image.network(
                              'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/4059729348326-1.jpg?v=1646985487',
                              height: 150.0,
                            ),
                            Text('Essence'),
                            Text('Electric Glow Changing'),
                            Text(
                              'Rp 15.000',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.pink[300]),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(color: Colors.black),
                              child: Text(
                                'Add to Bag',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              padding: EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                color: Colors.pink[300],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text('Express'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Produk2()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Image.network(
                              'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/3600523823628-1_314ddad8-2e58-4d1d-9a53-54cc8af797a9.jpg?v=1633422092',
                              height: 150.0,
                            ),
                            Text('L"Oreal Paris'),
                            Text('Hyaluron Expert'),
                            Text(
                              'Rp 30.000',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.pink[300]),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(color: Colors.black),
                              child: Text(
                                'Add to Bag',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              padding: EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                color: Colors.pink[300],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text('Express'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Produk3()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Image.network(
                              'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/15-3085092-pink-760x850.jpg?v=1633444171',
                              height: 150.0,
                            ),
                            Text('Maybelline New York'),
                            Text('Instant Age Rewind'),
                            Text(
                              'Rp 45.000',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.pink[300]),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(color: Colors.black),
                              child: Text(
                                'Add to Bag',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              padding: EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                color: Colors.pink[300],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text('Express'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Produk4()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Image.network(
                              'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/4059729369239-1.jpg?v=1658912883',
                              height: 150.0,
                            ),
                            Text('Essence'),
                            Text('Jurassic World Eye'),
                            Text(
                              'Rp 33.000',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.pink[300]),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150.0,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(color: Colors.black),
                              child: Text(
                                'Add to Bag',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5.0),
                              padding: EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                color: Colors.pink[300],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text('Express'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FooterAulia()
            ],
          ),
        ),
      ),
    );
  }
}
