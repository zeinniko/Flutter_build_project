import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class landPerpustakaan extends StatefulWidget {
  const landPerpustakaan({super.key});

  @override
  State<landPerpustakaan> createState() => _landPerpustakaanState();
}

class _landPerpustakaanState extends State<landPerpustakaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mita Smart'),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red[100],
              ),
              width: double.infinity,
              height: 200.0,
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('../images/bookshelf.png'),
                        radius: 50.0,
                      ),
                      Column(
                        children: [
                          Text('Perpustakaan'),
                          Text('Nama Pemilik'),
                          Text('Tanggal Daftar'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              '../images/facebook.png',
                              height: 16.0,
                            ),
                            Text('Facebook'),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.green,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              '../images/whatsapp.png',
                              height: 16.0,
                            ),
                            Text('Whatsapp'),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.red,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              '../images/pinterest.png',
                              height: 16.0,
                            ),
                            Text('Pinterest'),
                          ],
                        ),
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
              height: 500.0,
              child: DefaultTabController(
                length: 5,
                child: Scaffold(
                  appBar: AppBar(
                    bottom: TabBar(
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: 'Buku',
                        ),
                        Tab(
                          text: 'Pinjam Buku',
                        ),
                        Tab(
                          text: 'Group',
                        ),
                        Tab(
                          text: 'Informasi Artikel',
                        ),
                        Tab(
                          text: 'Pengaturan',
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      Container(
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  '../images, height: 55.0',
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'data',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  '../images',
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'data',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  '../images',
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'data',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  '../images',
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'data',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  '../images',
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'data',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  '../images',
                                  height: 55.0,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  'data',
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blueGrey.shade900,
                          ),
                        ),
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Container(
                              child: Text('Form Peminjaman Buku'),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(),
                                ),
                                labelText: 'Name Siswa',
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(),
                                ),
                                labelText: 'NIS',
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(),
                                ),
                                labelText: 'Judul Buku',
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(),
                                ),
                                labelText: 'ID Buku',
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text('Submit'))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Message Group'),
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Colors.black)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Group Pramuka'),
                                  Column(
                                    children: [Text('waktu'), Text('data')],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Colors.black)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Group Pramuka'),
                                  Column(
                                    children: [Text('waktu'), Text('data')],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Colors.black)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Group Pramuka'),
                                  Column(
                                    children: [Text('waktu'), Text('data')],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Colors.black)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Group Pramuka'),
                                  Column(
                                    children: [Text('waktu'), Text('data')],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Colors.black)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Group Pramuka'),
                                  Column(
                                    children: [Text('waktu'), Text('data')],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Colors.black)),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Group Pramuka'),
                                  Column(
                                    children: [Text('waktu'), Text('data')],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Swiper.children(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Image.asset('name'),
                                  Text('artikel')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset('name'),
                                  Text('artikel')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset('name'),
                                  Text('artikel')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset('name'),
                                  Text('artikel')
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Image.asset('name'),
                                  Text('artikel')
                                ],
                              ),
                            ),
                          ],
                          pagination: SwiperPagination(),
                          control: SwiperControl(),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(22.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(''),
                              radius: 70.0,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('data'),
                                Icon(Icons.keyboard_double_arrow_right),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('data'),
                                Icon(Icons.keyboard_double_arrow_right),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('data'),
                                Icon(Icons.keyboard_double_arrow_right),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('data'),
                                Icon(Icons.keyboard_double_arrow_right),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
