import 'package:flutter/material.dart';
import 'package:palcomtech_web/widget/drawer.dart';

class ListStudi {
  String image;
  String title;
  String price;
  ListStudi({required this.image, required this.title, required this.price});
}

class ListKursusSingkat {
  String image;
  String title;
  String price;
  ListKursusSingkat(
      {required this.image, required this.title, required this.price});
}

class ListProfesi {
  String image;
  String title;
  String price;
  ListProfesi({required this.image, required this.title, required this.price});
}

class ListKursusEnglish {
  String image;
  String title;
  String price;
  ListKursusEnglish(
      {required this.image, required this.title, required this.price});
}

class ListKursusOnline {
  String image;
  String title;
  String price;
  ListKursusOnline(
      {required this.image, required this.title, required this.price});
}

class Pendaftaran extends StatefulWidget {
  const Pendaftaran({super.key});

  @override
  State<Pendaftaran> createState() => _PendaftaranState();
}

class _PendaftaranState extends State<Pendaftaran> {
  List<ListStudi> _ListStudi = [];
  List<ListKursusSingkat> _ListKursusSingkat = [];
  List<ListProfesi> _ListProfesi = [];
  List<ListKursusEnglish> _ListKursusEnglish = [];
  List<ListKursusOnline> _ListKursusOnline = [];

  @override
  void initState() {
    super.initState();

    _ListStudi.add(ListStudi(
      image:
          'https://palcomtech.com/wp-content/uploads/2020/04/sistem-informasi2.png',
      title: 'PRODI SISTEM INFORMASI',
      price: 'Rp. 6.625.000',
    ));
    _ListStudi.add(ListStudi(
      image:
          'https://palcomtech.com/wp-content/uploads/2020/04/informatika2.png',
      title: 'PRODI INFORMATIKA',
      price: 'Rp. 6.625.000',
    ));
    _ListStudi.add(ListStudi(
      image:
          'https://palcomtech.com/wp-content/uploads/2020/04/bisnis-digital2.png',
      title: 'PRODI BISNIS DIGITAL',
      price: 'Rp. 6.125.000',
    ));

    _ListKursusSingkat.add(ListKursusSingkat(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-3.png',
      title: 'DESAIN GRAFIS',
      price: 'Rp 900.000',
    ));
    _ListKursusSingkat.add(ListKursusSingkat(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/1000x1337.jpg',
      title: 'CODING CAMP KIDS',
      price: 'Rp. 500.000',
    ));
    _ListKursusSingkat.add(ListKursusSingkat(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-1.png',
      title: 'AUTO CAT 2D & 3D',
      price: 'Rp. 900.000',
    ));
    _ListKursusSingkat.add(ListKursusSingkat(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-11.png',
      title: 'PEMROGRAMAN WEB',
      price: 'Rp. 900.000',
    ));
    _ListKursusSingkat.add(ListKursusSingkat(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-12.png',
      title: 'DESAIN WEB INTERAKTIF',
      price: 'Rp. 900.000',
    ));
    _ListKursusSingkat.add(ListKursusSingkat(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-4.png',
      title: 'PHP LARAVEL FRAMEWORK',
      price: 'Rp. 750.000',
    ));

    _ListProfesi.add(ListProfesi(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-5.png',
      title: 'PROGRAM TEKNIK INFORMATIKA',
      price: 'Rp. 4.270.000',
    ));
    _ListProfesi.add(ListProfesi(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-6.png',
      title: 'KOMPUTER & INTERNET',
      price: 'Rp. 2.525.000',
    ));

    _ListKursusEnglish.add(ListKursusEnglish(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-10.png',
      title: 'ENGLISH FOR SCHOOL',
      price: 'Rp. 1.000.000',
    ));
    _ListKursusEnglish.add(ListKursusEnglish(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-7.png',
      title: 'ENGLISH FOR  FAMILY',
      price: 'Rp. 1.800.000',
    ));
    _ListKursusEnglish.add(ListKursusEnglish(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-9.png',
      title: 'ENGLISH FOR PROFESSIONAL',
      price: 'Rp. 2.000.000',
    ));
    _ListKursusEnglish.add(ListKursusEnglish(
      image: 'https://palcomtech.com/wp-content/uploads/2022/06/Autocad-8.png',
      title: 'ENGLISH FOR SOCIETY',
      price: 'Rp. 2.200.000',
    ));

    _ListKursusOnline.add(ListKursusOnline(
      image:
          'https://palcomtech.com/wp-content/uploads/2022/06/92beb2f13d82208d7e2ecacaee080f6f-1.jpeg',
      title: 'BAHASA INGGRIS',
      price: 'Rp. 199.000',
    ));
    _ListKursusOnline.add(ListKursusOnline(
      image:
          'https://palcomtech.com/wp-content/uploads/2022/06/fcf83178496764e875f033e3f823ac6e-1.webp',
      title: 'MICROSOFT OFFICE',
      price: 'Rp. 375.000',
    ));
    _ListKursusOnline.add(ListKursusOnline(
      image:
          'https://palcomtech.com/wp-content/uploads/2022/06/b4b9e0c98890e1fc9b6cae572d0cf51d.webp',
      title: 'PEMROGRAMAN WEB',
      price: 'Rp. 375.000',
    ));
    _ListKursusOnline.add(ListKursusOnline(
      image:
          'https://palcomtech.com/wp-content/uploads/2022/06/b7d9c2dc104322c65653cb1dfa579df7.webp',
      title: 'AUTOCAD',
      price: 'Rp. 375.000',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/images/logo.png',
          height: 55.0,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        centerTitle: true,
      ),
      drawer: DrawerWidget(),
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text('PROGRAM STUDI FAVORIT',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            fontStyle: FontStyle.italic)),
                  ),
                  Container(
                    height: 270.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, position) {
                        return _showListStudi(_ListStudi[position]);
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text('PROGRAM KURSUS SINGKAT',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            fontStyle: FontStyle.italic)),
                  ),
                  Container(
                    height: 270.0,
                    child: ListView.builder(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, position) {
                        return _showListKursusSingkat(
                            _ListKursusSingkat[position]);
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text('PROGRAM PROFESI',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            fontStyle: FontStyle.italic)),
                  ),
                  Container(
                    height: 270.0,
                    child: ListView.builder(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, position) {
                        return _showListProfesi(_ListProfesi[position]);
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text('KURSUS BAHASA INGGRIS',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            fontStyle: FontStyle.italic)),
                  ),
                  Container(
                    height: 270.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, position) {
                        return _showListKursusEnglish(
                            _ListKursusEnglish[position]);
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'KURSUS ONLINE',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                    height: 270.0,
                    child: ListView.builder(
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, position) {
                        return _showListKursusOnline(
                            _ListKursusOnline[position]);
                      },
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _showListStudi(ListStudi listStudi) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(12.0),
                child: Image.network(
                  listStudi.image,
                  height: 200,
                )),
          ),
          Text(listStudi.title, style: TextStyle(fontSize: 15.0)),
          Text(listStudi.price,
              style: TextStyle(fontSize: 15.0, color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _showListKursusSingkat(ListKursusSingkat listKursusSingkat) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(12.0),
                child: Image.network(
                  listKursusSingkat.image,
                  height: 200,
                )),
          ),
          Text(listKursusSingkat.title, style: TextStyle(fontSize: 15.0)),
          Text(listKursusSingkat.price,
              style: TextStyle(fontSize: 15.0, color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _showListProfesi(ListProfesi listProfesi) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(12.0),
                child: Image.network(
                  listProfesi.image,
                  height: 200,
                )),
          ),
          Text(listProfesi.title, style: TextStyle(fontSize: 15.0)),
          Text(listProfesi.price,
              style: TextStyle(fontSize: 15.0, color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _showListKursusEnglish(ListKursusEnglish listKursusEnglish) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(12.0),
                child: Image.network(
                  listKursusEnglish.image,
                  height: 200,
                )),
          ),
          Text(listKursusEnglish.title, style: TextStyle(fontSize: 15.0)),
          Text(listKursusEnglish.price,
              style: TextStyle(fontSize: 15.0, color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _showListKursusOnline(ListKursusOnline listKursusOnline) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Container(
                padding: EdgeInsets.all(12.0),
                child: Image.network(
                  listKursusOnline.image,
                  height: 200,
                )),
          ),
          Text(listKursusOnline.title, style: TextStyle(fontSize: 15.0)),
          Text(listKursusOnline.price,
              style: TextStyle(fontSize: 15.0, color: Colors.blue)),
        ],
      ),
    );
  }
}
