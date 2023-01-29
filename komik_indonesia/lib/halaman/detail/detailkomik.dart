import 'package:flutter/material.dart';

import 'komik.dart';

class detailKomik extends StatefulWidget {
  const detailKomik({super.key});

  @override
  State<detailKomik> createState() => _detailKomikState();
}

class _detailKomikState extends State<detailKomik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('../assets/images/daftar_komik/komik2.png')),
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 0.0),
              height: 750.0,
              padding: EdgeInsets.fromLTRB(10.0, 55.0, 10.0, 0.0),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Komik 1 Second'),
                  SizedBox(
                    height: 75.0,
                  ),
                  Text(
                      'Seorang pemadam kebakaran legendaris dengan tingkat penyelamatan sukses 100%. Apa kemampuan istimewanya?'),
                  Container(
                    alignment: Alignment.center,
                    width: 150.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 219, 219, 219)),
                    child: Row(children: [
                      Text('Awal :'),
                      Text(
                        'Chapter 1',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 219, 219, 219)),
                    child: Row(children: [
                      Text('Terbaru :'),
                      Text(
                        'Chapter 35',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Image.asset('../assets/images/daftar_komik/komik2.png'),
                  Container(
                    width: 150.0,
                    alignment: Alignment.center,
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.bookmark), Text('Bookmark')],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 32.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 32.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 32.0,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 32.0,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.yellow,
                        size: 32.0,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 199, 199),
                                border: Border.all(color: Colors.black)),
                            child: Text('Status	'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text('Ongoing'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 199, 199),
                                border: Border.all(color: Colors.black)),
                            child: Text('Type	'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text('Manhwa'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 199, 199),
                                border: Border.all(color: Colors.black)),
                            child: Text('Released'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text('2020'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 199, 199),
                                border: Border.all(color: Colors.black)),
                            child: Text('Author	'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text('Sini(시니)'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 199, 199),
                                border: Border.all(color: Colors.black)),
                            child: Text('Posted By	'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text('komik indonesia'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 199, 199),
                                border: Border.all(color: Colors.black)),
                            child: Text('Posted On	'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text('Februari 12, 2022'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 199, 199),
                                border: Border.all(color: Colors.black)),
                            child: Text('Updated On	'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Text('Juli 17, 2022'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red)),
                            child: Text('Action'),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue)),
                            child: Text(' Adventure '),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green)),
                            child: Text('  Drama '),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange)),
                            child: Text(' Supernatural'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.blue,
                            Color.fromARGB(255, 3, 39, 244)
                          ]),
                    ),
                    child: Text(
                      'Chapter 1 Second',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Row(
                          children: [
                            Image.asset('../assets/icons/twitter.png',
                                height: 12.0, color: Colors.white),
                            Text(
                              'Twitter',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 12, 67, 112)),
                        child: Row(
                          children: [
                            Image.asset('../assets/icons/facebook.png',
                                height: 12.0, color: Colors.white),
                            Text('Facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 252, 151, 19)),
                        child: Row(
                          children: [
                            Image.asset('../assets/icons/instagram.png',
                                height: 12.0, color: Colors.white),
                            Text('Instagram',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 216, 44, 32)),
                        child: Row(
                          children: [
                            Image.asset(
                              '../assets/icons/pinterest.png',
                              height: 12.0,
                              color: Colors.white,
                            ),
                            Text('Pinterest',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 209, 209, 209),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text('Cari Chapter: Contoh 25 atau 105'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Komik(),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 35'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 34'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 33'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 32'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 31'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 30'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 29'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 28'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 27'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 26'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 25'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 24'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 23'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 22'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 21'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 20'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 19'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 18'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 17'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 16'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 15'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 14'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 13'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 12'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 11'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 10'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 9'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 8'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 7'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 6'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 5'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 4'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 3'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 2'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 223, 223, 223)),
                              padding: EdgeInsets.all(5.0),
                              alignment: Alignment.bottomLeft,
                              child: Text('Chapter 1'),
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.blue,
                            Color.fromARGB(255, 3, 39, 244)
                          ]),
                    ),
                    child: Text(
                      'Chapter 1 Second',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Komiku Kebijakan Komentar',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                      'Ayo!!... Bookmark Situs https://komiku.com Terdapat Ribuan Koleksi Komik Favorit Kalian yang Kami Update Setiap Harinya.'),
                  SizedBox(height: 10.0),
                  ElevatedButton(onPressed: () {}, child: Text('Got it')),
                  SizedBox(height: 10.0),
                  Text(
                      'Di pencet gan tombol responnya! Jangan diem bae...\n15 Responses'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            '../assets/icons/star.png',
                            height: 55.0,
                          ),
                          Image.asset(
                            '../assets/icons/cool.png',
                            height: 55.0,
                          ),
                          Image.asset(
                            '../assets/icons/emo.png',
                            height: 55.0,
                          ),
                          Image.asset(
                            '../assets/icons/emo2.png',
                            height: 55.0,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            '../assets/icons/party.png',
                            height: 55.0,
                          ),
                          Image.asset(
                            '../assets/icons/like.png',
                            height: 55.0,
                          ),
                          Image.asset(
                            '../assets/icons/emoji.png',
                            height: 55.0,
                          ),
                          Image.asset(
                            '../assets/icons/hands.png',
                            height: 55.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
