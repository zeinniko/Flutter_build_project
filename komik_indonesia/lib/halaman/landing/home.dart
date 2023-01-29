import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  List<Widget> _imageCaraosel = [
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/1.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              "Player Who Can't Levels Up",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/2.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Arcane Sniper',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/3.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'The Beginning After The And',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/4.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Class Suicide Hunters',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/5.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Leveling Of The Gods',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/6.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'The Descent Od The Demonic Master',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/7.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'The Great Mage Return After 4000 Years',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/8.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Woker Live A Second Time',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
    Container(
      child: Column(
        children: [
          Image.asset('../assets/images/9.png'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Judul',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  ];

  List<Widget> _genreList = [
    Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            '4-Koma',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Adventure',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Cooking',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Demon',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Drama',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Fantasy',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Gender',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Harem',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Horror',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Josei',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Lolicon',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Magical',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Manhwa',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Martial',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Mecha',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Military',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Murim',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'One-Shot',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Psychological',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Romance',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    ),
    Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Action',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Comedy',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Crime',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Echi',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Game',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Gore',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Historical',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Isekai',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Kingdom',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Magic',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Manhua',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Martial',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Mature',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Medical',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Monster',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Mystery',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Police',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Reincarnation',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'School',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sci-Fi',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          '../assets/images/logo2.png',
          height: 150.0,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.blue, Color.fromARGB(255, 3, 39, 244)]),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: ListView(
          children: [
            caraosel(),
            Container(
              padding: EdgeInsets.only(top: 25.0),
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
                          colors: [Colors.blue, Color.fromARGB(255, 3, 39, 244)]),
                    ),
                    child: Text(
                      'Baca Komik Trending Hari Ini Online',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  trending(),
                ],
              ),
            ),
            deskripsi(),
            Container(
              padding: EdgeInsets.only(top: 25.0),
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
                          colors: [Colors.blue, Color.fromARGB(255, 3, 39, 244)]),
                    ),
                    child: Text(
                      'Baca Komik Terbaru Online',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  daftarTerbaru(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0),
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
                          colors: [Colors.blue, Color.fromARGB(255, 3, 39, 244)]),
                    ),
                    child: Text(
                      'Genre Komik Online',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  genre(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25.0),
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
                          colors: [Colors.blue, Color.fromARGB(255, 3, 39, 244)]),
                    ),
                    child: Text(
                      'Terakhir Dibaca',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  terakhirDibaca(),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
    );
  }

  Widget caraosel() {
    return Container(
      child: Column(
        children: [
          Container(
            height: 175,
            width: double.infinity,
            child: PageView(
              children: _imageCaraosel,
              onPageChanged: (index) {
                setState(
                  () {
                    pageIndex = index;
                  },
                );
              },
            ),
          ),
          CarouselIndicator(
            activeColor: Colors.blue,
            color: Colors.grey,
            count: _imageCaraosel.length,
            index: pageIndex,
          ),
        ],
      ),
    );
  }

  Widget trending() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('../assets/images/a.png'),
                Text('Solo Leveling'),
                Text('Chapter 179'),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('../assets/images/b.png'),
                Text('The Beginning \nAfter the End'),
                Text('Chapter 172'),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('../assets/images/c.png'),
                Text('Martial Peak'),
                Text('Chapter 2842'),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 15.0),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget deskripsi() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 16.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Komik Indonesia - Baca Manga',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
          ),
          Text(
              'Komik Indonesia merupakan situs baca komik bahasa indonesia terlengkap. Tampilan web juga sangat nyaman dengan warna yang enak dilihat dan tentu tidak menggangu para pembaca. Kamu bisa baca manga terbaru, Manhua(China) dan Manhwa(Korea) online gratis hanya di komik indonesia'),
          Image.asset('../assets/images/bg.png')
        ],
      ),
    );
  }

  Widget daftarTerbaru() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('../assets/images/d.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Overgeared New'),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('~ Chapter 161'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('12 detik lalu'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('~ Chapter 160'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('1 minggu lalu'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('~ Chapter 159'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('2 minggu lalu'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('../assets/images/e.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tun Shi Xing Kong'),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('~ Chapter 150'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('9 jam lalu'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('~ Chapter 149'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('9 jam lalu'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('~ Chapter 148'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('9 jam lalu'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('../assets/images/f.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Crazy, A Tree-Year-Old'),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('~ Chapter 07'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('9 jam lalu'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('~ Chapter 06'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('4 minggu lalu'),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text('~ Chapter 05'),
                      SizedBox(
                        width: 100.0,
                      ),
                      Text('1 bulan lalu'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget genre() {
    return Container(
      height: 600,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _genreList,
      ),
    );
  }

  Widget terakhirDibaca() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 4.0),
            child: Text('Rebirt Of God Level Prodigal Son Chapter 31'),
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
          ),
          Container(
            margin: EdgeInsets.only(top: 4.0),
            child: Text('Villain Unrivaled Chapter 01'),
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
          ),
          Container(
            margin: EdgeInsets.only(top: 4.0),
            child: Text('Tarantula (Shin Jinwoo) Chapter 14'),
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black45)),
          ),
        ],
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Beranda',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Bookmart',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Daftar Komik',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Pengaturan Akun',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Tentang Aplikasi',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage('../assets/images/c.png'),
          fit: BoxFit.cover,
        ),
      ),
      otherAccountsPictures: [
        Icon(
          Icons.logout,
          size: 32.0,
        )
      ],
      accountName: Text('Firnando'),
      accountEmail: Text('firnando@gmail.com'),
    );
  }
}
