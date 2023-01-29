import 'package:flutter/material.dart';

import 'beranda/akun.dart';
import 'beranda/menu.dart';
import 'beranda/saldo.dart';
import 'beranda/pesan.dart';
import 'beranda/home.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _bottomnav = 0;
  List<Widget> _container = [
    home(),
    menu(),
    saldo(),
    pesan(),
    akun(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomnav],
      bottomNavigationBar: BottomNav(),
    );
  }

  Widget BottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomnav = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu_book,
          ),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.money,
          ),
          label: 'Saldo',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.inbox,
          ),
          label: 'Pesan',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.person,
          ),
          icon: Icon(
            Icons.person,
          ),
          label: 'Akun',
        ),
      ],
      selectedItemColor: Colors.amber,
    );
  }
}
