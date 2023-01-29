import 'package:flutter/material.dart';
import 'package:ren_project/halaman/beranda/akun.dart';
import 'package:ren_project/halaman/beranda/home.dart';
import 'package:ren_project/halaman/beranda/keranjang.dart';
import 'package:ren_project/halaman/beranda/pesan.dart';
import 'package:ren_project/variabel.dart';

class halamanLanding extends StatefulWidget {
  const halamanLanding({super.key});

  @override
  State<halamanLanding> createState() => _halamanLandingState();
}

class _halamanLandingState extends State<halamanLanding> {
  int _selectedIndex = 0;
  List<Widget> _container = [
    HomePage(),
    KeranjangPage(),
    PesanPage(),
    AkunPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_selectedIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag,
          ),
          label: 'Keranjang',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
          ),
          label: 'Pesan',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_box,
          ),
          label: 'Akun',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: renColor.colorNavButton,
      onTap: _onItemTapped,
    );
  }
}
