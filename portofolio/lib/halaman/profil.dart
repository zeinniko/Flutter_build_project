import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(isScrollable: true, tabs: [
              Tab(
                text: 'Personal Data',
              ),
              Tab(
                text: 'Detail Alamat',
              ),
              Tab(
                text: 'Favorite',
              ),
              Tab(
                text: 'Kontak',
              ),
              Tab(
                text: 'Daftar Sekolah',
              ),
              Tab(
                text: 'Media Sosial',
              ),
            ]),
            title: Text("About Me")),
        body: TabBarView(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black))),
              child: Column(
                children: [
                  Text('INFORMASI SAYA'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Nama'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Alamat'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Tempat Lahir'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Tanggal Lahir'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Agama'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Asal Kota'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Alamat Lengkap Saya'),
                  Image.asset(
                    '../assets/map.jpg',
                    height: 150.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Negara'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Provinsi'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Kota/Kabupaten'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('detail'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black))),
              child: Column(
                children: [
                  Text('KESUKAAN SAYA'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Makanan'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Minuman'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Tempat'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Warna'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Idola'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('Pacar'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('KONTAK SAYA'),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.blueGrey),
                    child: Text('Bapak \n 0842-1425-6382'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.blueGrey),
                    child: Text('Ibu \n 0842-1425-6382'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.blueGrey),
                    child: Text('Saudara \n 0842-1425-6382'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.blueGrey),
                    child: Text('Teman \n 0842-1425-6382'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black))),
              child: Column(
                children: [
                  Text('DAFTAR SEKOLAH SAYA'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('SD'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('SMP'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black45),
                          color: Color.fromARGB(255, 199, 199, 199),
                        ),
                        child: Text('SMA'),
                      ),
                      Container(
                        width: 150.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Text(':  DATA'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MEDIA SOSIAL'),
                  SizedBox(
                    height: 15.0,
                  ),
                  MaterialButton(
                    color: Colors.purple,
                    onPressed: () {},
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        children: [
                          Image.asset(
                            '../assets/images/instagram.png',
                            color: Colors.white,
                            height: 24.0,
                          ),
                          Text('Instagram'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  MaterialButton(
                    color: Colors.blueAccent,
                    onPressed: () {},
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        children: [
                          Image.asset(
                            '../assets/images/facebook.png',
                            color: Colors.white,
                            height: 24.0,
                          ),
                          Text('Facebook'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  MaterialButton(
                    color: Colors.red,
                    onPressed: () {},
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        children: [
                          Image.asset(
                            '../assets/images/pinterest.png',
                            color: Colors.white,
                            height: 24.0,
                          ),
                          Text('Pinterest'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        children: [
                          Image.asset(
                            '../assets/images/twitter.png',
                            color: Colors.white,
                            height: 24.0,
                          ),
                          Text('Twitter'),
                        ],
                      ),
                    ),
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
