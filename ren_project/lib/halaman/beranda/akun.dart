import 'package:flutter/material.dart';
import 'package:ren_project/halaman/splashscreen.dart';
import 'package:ren_project/variabel.dart';

class AkunPage extends StatefulWidget {
  const AkunPage({super.key});

  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Image.asset(
          '../assets/icons/r.png',
          height: 32,
        ),
        title: Container(
          padding: EdgeInsets.only(top: 12.0),
          child: Image.asset(
            '../assets/ren_logo.png',
            alignment: Alignment.bottomCenter,
            height: 100.0,
            width: 100.0,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 12.0, top: 5.0, bottom: 5.0),
            child: Image.asset(
              '../assets/icons/shopping.png',
              height: 32.0,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.green, Colors.blue],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(65, 0, 0, 0))),
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 0, right: 0),
        child: ListView(
          children: [
            _profilData(),
            _Pesanan(),
            SizedBox(
              height: 12.0,
            ),
            _dompet(),
            _fitur(),
            _support(),
            SizedBox(
              height: 12.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => splashscreen()));
              },
              child: Text('Log Out'),
              color: renColor.bora,
            )
          ],
        ),
      ),
    );
  }

  Widget _profilData() {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('../assets/profil.jpg'),
            radius: 55.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Ren Commerce',
                  style: TextStyle(color: renColor.ink, fontSize: 18.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: renColor.bora),
                      child: Text(
                        'Member Premium',
                        style: TextStyle(
                            fontFamily: '', color: Colors.white, fontSize: 9.0),
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Pengikut 100 | Mengikuti 12',
                  style: TextStyle(
                      fontFamily: '', color: renColor.ink, fontSize: 9.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _Pesanan() {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.list,
                      color: renColor.bora,
                    ),
                    Text('Pesanan Saya'),
                  ],
                ),
                Row(
                  children: [
                    Text('Lihat Riwayat Pesanan'),
                    Icon(
                      Icons.arrow_right,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(65, 0, 0, 0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [Icon(Icons.shop), Text('Dipesan')],
                ),
                Column(
                  children: [Icon(Icons.gif_box), Text('Dikemas')],
                ),
                Column(
                  children: [Icon(Icons.fire_truck), Text('Dikirim')],
                ),
                Column(
                  children: [Icon(Icons.star_border), Text('Penilaian')],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _dompet() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.wallet,
                color: renColor.ink,
              ),
              Text('Dompet Saya')
            ],
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(65, 0, 0, 0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      '../assets/icons/wallet.png',
                      height: 32.0,
                    ),
                    Text('Ren Saldo'),
                    Text(
                      'Rp. 50.000',
                      style: TextStyle(fontFamily: '', color: renColor.ink),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      '../assets/icons/sound-system.png',
                      color: renColor.flash,
                      height: 32.0,
                    ),
                    Text('Voucher'),
                    Text(
                      '9+ Voucher',
                      style: TextStyle(fontFamily: '', color: renColor.ink),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _fitur() {
    return Container(
      padding: EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(65, 0, 0, 0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.blue,
                    ),
                    Text('Ren Member'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Member Premium',
                      style: TextStyle(fontFamily: '', color: renColor.ink),
                    ),
                    Icon(Icons.arrow_right)
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.heart_broken,
                    color: Colors.pink,
                  ),
                  Text('Favorit Saya'),
                ],
              ),
              Row(
                children: [
                  Text(
                    '4 Favorit',
                    style: TextStyle(fontFamily: '', color: renColor.ink),
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(65, 0, 0, 0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.lock_clock,
                      color: Colors.green,
                    ),
                    Text('Terakhir Dilihat'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '11.20',
                      style: TextStyle(fontFamily: '', color: renColor.ink),
                    ),
                    Icon(Icons.arrow_right)
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('Penilaian Saya'),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Bagus',
                    style: TextStyle(fontFamily: '', color: renColor.ink),
                  ),
                  Icon(Icons.arrow_right)
                ],
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(65, 0, 0, 0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.card_giftcard,
                      color: Colors.blue,
                    ),
                    Text('Voucher Saya'),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '9+ Voucher',
                      style: TextStyle(fontFamily: '', color: renColor.ink),
                    ),
                    Icon(Icons.arrow_right)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _support() {
    return Container(
      padding: EdgeInsets.only(top: 16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(65, 0, 0, 0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.green,
                    ),
                    Text('Pengaturan Akun'),
                  ],
                ),
                Row(
                  children: [Icon(Icons.arrow_right)],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.support,
                    color: Colors.red,
                  ),
                  Text('Pusat Bantuan'),
                ],
              ),
              Row(
                children: [Icon(Icons.arrow_right)],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(65, 0, 0, 0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.headphones,
                      color: Colors.blue,
                    ),
                    Text('Customer Service'),
                  ],
                ),
                Row(
                  children: [Icon(Icons.arrow_right)],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
