import 'package:flutter/material.dart';

import 'landing/akun.dart';
import 'landing/bookmark.dart';
import 'landing/home.dart';
import 'landing/listkomik.dart';

class landingScreen extends StatefulWidget {
  @override
  _landingScreenState createState() => _landingScreenState();
}

class _landingScreenState extends State<landingScreen> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    Home(),
    Bookmark(),
    ListKomik(),
    Akun(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return  BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
            ),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,
            ),
            label: 'Daftar Komik',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Akun',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 8, 10, 131),
      );
  }
}
