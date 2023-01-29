import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
        child: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
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
                'Bookmark',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.red),
                  color: Color.fromARGB(255, 219, 158, 123)),
              child: Text(
                  'Anda dapat menyimpan daftar animme disini hingga 100 judul. Daftar ditampilkan berdasarkan tanggal update tertentu. Daftar anime disimpan di aplikasi yang anda gunakan saat ini'),
            ),
            SizedBox(
              height: 70.0,
            ),
            Center(
              child: Text(
                'Kamu Belum Mempunyai Bookmark apapun.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 70.0,
            ),
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
                'Instal Aplikasih Komik  Indonesia Di PlayStore',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),SizedBox(
              height: 20.0,
            ),
            Image.asset('../assets/icons/google-play.png', height: 100,),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
