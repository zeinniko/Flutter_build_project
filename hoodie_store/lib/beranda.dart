import 'package:flutter/material.dart';
import 'home.dart';
import 'pembelian.dart';
import 'affiliate.dart';
import 'pengaturan.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  int _NavIndex = 0;
  List<Widget> _container = [
    Home(),
    Pembelian(),
    Affiliate(),
    Pengaturan(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_NavIndex], bottomNavigationBar: _NavBottom());
  }

  Widget _NavBottom() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _NavIndex = index;
        });
      },
      currentIndex: _NavIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.camera,
          ),
          label: 'Pembelian',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.share,
          ),
          label: 'Affiliate',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: 'Pengaturan',
        ),
      ],
      selectedItemColor: Color.fromARGB(255, 255, 0, 0),
    );
  }
}
