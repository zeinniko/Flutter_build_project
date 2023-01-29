import 'package:flutter/material.dart';
import 'halaman/hobby.dart';
import 'halaman/pekerjaan.dart';
import 'halaman/profil.dart';

class PageLanding extends StatefulWidget {
  @override
  _PageLandingState createState() => _PageLandingState();
}

class _PageLandingState extends State<PageLanding> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    Pekerjaan(),
    Hobby(),
    Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
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
            Icons.work,
          ),
          label: 'My Fotografy',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.camera,
          ),
          label: 'My Hobby',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_pin_circle,
          ),
          label: 'About Me',
        ),
      ],
      selectedItemColor: Colors.red,
    );
  }
}
