import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:palcomtech_web/widget/drawer.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  List<String> listKota = [
    "Pilih Salah Satu",
    "Program Sarjana",
    "Program Profesi",
    "Kursus Reguler",
    "Kursus Bahasa Inggris",
  ];

  String nKota = "Pilih Salah Satu";
  int? nilaiKota;

  void pilihKota(String value) {
    //menampilkan kota yang dipilih
    setState(() {
      nKota = value;
    });
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
            _slider(),
            _init(),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: _deskripsi(),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: _swiper(),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: _promo(),
            ),
            _form(),
            SizedBox(
              height: 20.0,
            ),
            _prodi(),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black45)),
            ),
            SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/download.png'),
            ),
            SizedBox(
              height: 150.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text('LEMBAGA DAN PELATIHAN KURSUS PALCOMTECH'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Text(
                        'PalComTech, adalah lembaga pendidikan generasi internet, berdiri sejak 2003, saat ini telah membantu dan mendidik ribuan siswa mencapai kesuksesan dalam karier maupun usaha, dengan sistem belajar 100% praktek 100% internet PalComTech menjamin setiap siswa dapat mempraktekan materi yang dipelajari secara langsung didepan komputer.'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Text(
                        'Institut Teknologi & Bisnis PalComTech terletak di kota Palembang. Selain itu juga ada 5 Lembaga Kursus & Pelatihan yang terletak di Palembang, Lahat, Prabumulih, dan Baturaja. Berikut ini Program Sarjana yang tersedia di Institut Teknologi & Bisnis PalComTech:'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset(
                    '../assets/images/whatsapp.png',
                    height: 25.0,
                  ),
                  Text('CHAT ADMIN'),
                ],
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: _text(),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black45))),
            ),
            SizedBox(
              height: 20.0,
            ),
            _bootcamp(),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text('BINTANG BINTANG PALCOMTECH'),
                  ),
                  _bintang(),
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 224, 224, 224)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    '../assets/images/logo.png',
                    height: 55.0,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Kuliah',
                        style: TextStyle(color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Kursus',
                        style: TextStyle(color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sosial Media',
                        style: TextStyle(color: Colors.black),
                      )),
                  Text(
                    '@Copyright 2022 Palcomtech.All rights reserved.',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _slider() {
    return Container(
      height: 200.0,
      width: double.infinity,
      child: Swiper.children(
        autoplay: true,
        children: [
          Image.asset(
            'assets/images/sl1.png',
          ),
          Image.asset(
            'assets/images/sl2.png',
          ),
          Image.asset(
            'assets/images/sl3.png',
          ),
        ],
        control: SwiperControl(),
      ),
    );
  }

  Widget _init() {
    return Column(
      children: [
        Text(
          'SMART CAMPUS',
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          'FOR A BETTER FUTURE',
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _deskripsi() {
    return Text(
        'Smart Campus merupakan gambaran secara umum  apa itu PalComTech. Kombinasi teknologi dan metode pembelajaran yang telah disesuaikan dengan kebutuhan industri serta didukung dengan fasilitas yang mendukung proses belajar mengajar. Dengan bimbingan pengajar yang profesional akan membimbing siswa  menjadi tenaga ahli yang mampu bersaing di era industri 5.0.');
  }

  Widget _swiper() {
    return Container(
      height: 60.0,
      width: double.infinity,
      child: Swiper.children(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/sw1.png',
              ),
              Image.asset(
                'assets/images/sw2.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/sw2.png',
              ),
              Image.asset(
                'assets/images/sw3.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/sw3.png',
              ),
              Image.asset(
                'assets/images/sw4.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/sw4.png',
              ),
              Image.asset(
                'assets/images/sw5.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/sw5.png',
              ),
              Image.asset(
                'assets/images/sw6.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/sw6.png',
              ),
              Image.asset(
                'assets/images/sw7.png',
              ),
            ],
          ),
        ],
        control: SwiperControl(),
      ),
    );
  }

  Widget _promo() {
    return Container(
      child: Image.asset('assets/images/promo.png'),
    );
  }

  Widget _form() {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(25.0),
            height: 59.0,
            width: 300.0,
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 39, 3, 158)),
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(156, 33, 149, 243),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.warning,
                  color: Colors.green[900],
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Silahkan pilih kategori,\nprogram studi, dan cabang',
                  style: TextStyle(color: Colors.green[900]),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Kategory'),
                ),
                DropdownButton(
                  alignment: Alignment.bottomLeft,
                  value: nKota,
                  onChanged: (String? value) {
                    pilihKota(value ?? "");
                    nilaiKota = listKota.indexOf(value ?? "");
                  },
                  items: listKota.map((String value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Produk'),
                ),
                DropdownButton(
                  value: nKota,
                  onChanged: (String? value) {
                    pilihKota(value ?? "");
                    nilaiKota = listKota.indexOf(value ?? "");
                  },
                  items: listKota.map((String value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Cabang'),
                ),
                DropdownButton(
                  value: nKota,
                  onChanged: (String? value) {
                    pilihKota(value ?? "");
                    nilaiKota = listKota.indexOf(value ?? "");
                  },
                  items: listKota.map((String value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _text() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('INSTITUT TEKNOLOGI & BISNIS PALCOMTECH'),
        SizedBox(
          height: 10.0,
        ),
        Text(
            'Pada tahun 2022  STMIK dan Politeknik PalComTech resmi menjadi  Institut Teknologi dan Bisnis PalComTech berdasarkan SK Penggabungan dengan nomor 280/E/2022 yang disahkan pada tanggal 20 April 2022.'),
        SizedBox(
          height: 30.0,
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Container(
                child: Text(
                  'Jurusan Sistem Informasi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                alignment: Alignment.bottomLeft,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text('LIHAT DETAIL JURUSAN -->'),
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Jurusan Informatika',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text('LIHAT DETAIL JURUSAN -->'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Jurusan Bisnis Digital',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text('LIHAT DETAIL JURUSAN -->'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bintang() {
    return Container(
      height: 250.0,
      child: Swiper.children(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b1.png',
                height: 150.0,
              ),
              Text('Raynanda Gunamwan'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                ' CEO (Chief Executive Officer) E-Commerce Maulagi.id',
                textAlign: TextAlign.center,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b2.png',
                height: 150.0,
              ),
              Text('Mohd Ilham'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                'Analisis Keimigrasian Ahli Pertama Kantor Imigrasi Kelas I TPI Tj. Pinang 5',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b3.png',
                height: 150.0,
              ),
              Text('Rijalul Fikri'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                'Head of Solution and Support PT Qiscus Tekno Indonesia',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b4.png',
                height: 150.0,
              ),
              Text('Agnes L Sitohang'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                'Hubungan Industrial PT.Bank Central Asia, Tbk.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b5.png',
                height: 150.0,
              ),
              Text('Andri Noviansyah'),
              Text('Alumni S1 Teknik Informatika'),
              Text(
                'Bidang Teknologi Informasi Kepolisian Negara Republik Indonesia',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b6.png',
                height: 150.0,
              ),
              Text('Safrilian Edwin Pratama'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                'Mandiri Office of Insurance',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b7.png',
                height: 150.0,
              ),
              Text('Joshua David'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                'Digital Marketing 4 Start-Up Ternama di Kota Palembang',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b8.png',
                height: 150.0,
              ),
              Text('Rico Andriansyah'),
              Text('Alumni D3 Manajemen Informatika'),
              Text(
                'CEO (Chief Executive Officer) INCO Group Sumatera',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b9.png',
                height: 150.0,
              ),
              Text('Rinaldi'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                'Dinas Kominfo kab.Bangka Barat',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b10.png',
                height: 150.0,
              ),
              Text('M.Farhan'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                'Head of Regional Data Support Smartfren - South Sumatera Region',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b11.png',
                height: 150.0,
              ),
              Text('M Yamin Achiruddin'),
              Text('Alumni S1 Sistem Informasi'),
              Text(
                'Staff Sekretariat Telkom Indonesia Wil.Sumsel',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                '../assets/images/b12.png',
                height: 150.0,
              ),
              Text('Ferika Pramitha Mulyani'),
              Text('Alumni S1 Teknik Informatika'),
              Text(
                'Profesional dalam Bidang Hukum Perdata',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
        control: SwiperControl(),
      ),
    );
  }

  Widget _prodi() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PROGRAM STUDI FAVORIT',
                style: TextStyle(fontSize: 20.0),
              ),
              Row(
                children: [
                  Icon(Icons.keyboard_double_arrow_left),
                  Icon(Icons.keyboard_double_arrow_right),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          height: 200.0,
          width: double.infinity,
          child: Swiper.children(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/p1.png',
                        height: 130.0,
                      ),
                      Text('Sistem Informasi'),
                      Text('Rp 6.650.000'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/p2.png',
                        height: 130.0,
                      ),
                      Text('Informatika'),
                      Text('Rp 6.650.000'),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/p3.png',
                        height: 130.0,
                      ),
                      Text('Bisnis Digital'),
                      Text('Rp 6.125.000'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/p4.png',
                        height: 130.0,
                      ),
                      Text('Microsoft Office'),
                      Text('Rp 375.000'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _bootcamp() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BOOTCAMP PROGRAM',
                style: TextStyle(fontSize: 20.0),
              ),
              Row(
                children: [
                  Icon(Icons.keyboard_double_arrow_left),
                  Icon(Icons.keyboard_double_arrow_right),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          height: 200.0,
          width: double.infinity,
          child: Swiper.children(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/boot1.png',
                        height: 130.0,
                      ),
                      Text('PEMBUATAN PROYEK IT'),
                      Text('Rp 4.000.000'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/boot2.png',
                        height: 130.0,
                      ),
                      Text('PENULISAN KARYA ILMIAH'),
                      Text('RP 1.500.000'),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/boot3.png',
                        height: 130.0,
                      ),
                      Text('MOBILE APPS FLUTTER'),
                      Text('Rp 1.000.000'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/boot4.png',
                        height: 130.0,
                      ),
                      Text('FRONTEND WEB DEVELOPER'),
                      Text('Rp 1.000.000'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/boot5.png',
                        height: 130.0,
                      ),
                      Text('BACKEND WEB DEVELOPER'),
                      Text('Rp 1.000.000'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/boot6.png',
                        height: 130.0,
                      ),
                      Text('FULLSTACK LARAVEL'),
                      Text('Rp 1.000.000'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
