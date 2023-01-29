import 'package:flutter/material.dart';
import 'package:palcomtech_web/widget/drawer.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
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
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Image.network(
                'https://palcomtech.com/wp-content/uploads/2022/06/DSC_2848-f.jpg'),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('INSTITUT TEKNOLOGI & BISNIS PALCOMTECH'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'PalComTech, adalah lembaga pendidikan generasi internet, berdiri sejak 2003, saat ini telah membantu dan mendidik ribuan siswa mencapai kesuksesan dalam karier maupun usaha, dengan sistem belajar 100% praktek 100% internet PalComTech menjamin setiap siswa dapat mempraktekan materi yang dipelajari secara langsung didepan komputer.'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'Institut Teknologi & Bisnis PalComTech terletak di kota Palembang. Selain itu juga ada 5 Lembaga Kursus & Pelatihan yang terletak di Palembang, Lahat, Prabumulih, dan Baturaja. Berikut ini Program Sarjana yang tersedia di Institut Teknologi & Bisnis PalComTech:'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.computer),
                      Text('Jurusan Sistem Informasi'),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.code),
                      Text('Jurusan Informatika'),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.badge),
                      Text('Jurusan Bisnis Digital'),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            Image.network(
                'https://palcomtech.com/wp-content/uploads/2022/06/DSC_2848-g.jpg'),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('SISTEM BELAJAR INSTITUT PALCOMTECH'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'Terbukti dengan sistem belajar 100% praktek 100% internet daya tangkap siswa PalComTech 3 kali lebih cepat dari pada siswa-siswa di kampus-kampus lain serta menjamin siswa menjadi mahir komputer dan internet hanya dalam 3 bulan. Dengan sistem belajar ini pula, proses belajar siswa PalComTech lebih menyenangkan dan keberhasilan serta masa depan siswa PalComTech lebih terjamin.'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'Sistem belajar PalComTech dilaksanakan dengan pemberian belajar praktek, diskusi, pemecahan studi kasus, praktikum di laboratorium, dan setiap pertemuan/perorang serta didukung dengan fasilitas belajar yang full komputer dan full internet. Semua mahasiswa diberikan akses worksheet yang telah tersedia fasilitas absensi online, ujian online dan materi belajar online yang dilengkapi dengan video tutorial dan fitur download materi.'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.whatsapp),
                              Text('Chat Admin')
                            ],
                          )),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.location_pin),
                            Text('Alamat Kampus')
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.network(
                'https://palcomtech.com/wp-content/uploads/2022/06/DSC_2848-k-768x965.jpg'),
            Container(
              child: Column(
                children: [
                  Text('MENGAPA KULIAH DI PALCOMTECH?'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'Institut PalComTech percaya jika semua mahasiswa memiliki talenta yang berbeda-beda. Oleh Karena itu, palcomtech akan senantiasa mendukung setiap talenta unik yang Mahasiswa miliki. Selain itu ada juga aslasan lain mengapa kamu harus kuliah di Institut PalComTech.'),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.computer,
                              color: Colors.blue,
                            ),
                            Text('Tersedia Beasiswa Prestasi')
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.computer,
                              color: Colors.blue,
                            ),
                            Text(
                                'Peluang kerja lebih luas & tersedia Career \nCenter')
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.computer,
                              color: Colors.blue,
                            ),
                            Text(
                                'Materi up-to-date sesuai kebutuhan Dunia \nUsaha & Dunia Industri kekinian')
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.computer,
                              color: Colors.blue,
                            ),
                            Text(
                                'Ekosistem perkuliahan yang nyaman berkat \nsistem e-university yang terintegrasi')
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.computer,
                              color: Colors.blue,
                            ),
                            Text(
                                'Akses belajar dimana saja kapan saja dengan \naplikasi PalComTech mobile')
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.computer,
                              color: Colors.blue,
                            ),
                            Text(
                                'Metode perkuliahan small class & Dosen muda \nyang friendly tapi professional')
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
