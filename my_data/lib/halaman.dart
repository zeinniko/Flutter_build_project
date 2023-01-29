import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IDENTITAS'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('../images/myfoto.jpeg'),
              radius: 72.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) {
                      return _identify();
                    },
                  );
                },
                child: Container(
                  width: 150.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.person),
                      Text('My Identify'),
                    ],
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) {
                      return _medsos();
                    },
                  );
                },
                child: Container(
                  width: 150.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.perm_media_outlined),
                      Text('Media Sosial'),
                    ],
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (context) {
                    return _selengkapnya();
                  },
                );
              },
              child: Container(
                width: 150.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Text('Selengkapnya'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _identify() {
    return Center(
      child: Container(
        height: 300.0,
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
            ),
            Container(
              child: Text('IDENTIFY'),
            ),
            Text('Anggun Oktaviani'),
            Text('Tempat Tanggal Lahir'),
            Text('Alamat'),
          ],
        ),
      ),
    );
  }

  Widget _medsos() {
    return Center(
      child: Container(
        height: 300.0,
        child: Column(
          children: [
            Container(
              child: Text('MEDIA SOSIAL'),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
                onPressed: () {},
                child: Container(
                  width: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Row(
                    children: [
                      Image.asset(
                        '../images/facebook.png',
                        height: 55.0,
                      ),
                      Text('Facebook'),
                    ],
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16.0)),
                  width: 150.0,
                  child: Row(
                    children: [
                      Image.asset(
                        '../images/whatsapp.png',
                        height: 55.0,
                      ),
                      Text('Whatsapp'),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _selengkapnya() {
    return Container(
      child: Column(
        children: [
          SizedBox(height:100.0),
          Text('Mahsiswi Institud Teknologi dan Bisnis Palcomtech'),
          Text('Prodi S1 Informatika'),
          Text('Belum Menikah'),
          Text('Islam'),
          Text('Warga Negara Indonesia'),
          Text('Golongan Darah A++'),
          Text('Sehat'),
        ],
      )
    );
  }
}
