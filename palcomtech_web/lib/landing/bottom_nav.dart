import 'package:flutter/material.dart';
import 'package:palcomtech_web/landing/menu/aboutme.dart';
import 'package:palcomtech_web/landing/menu/artikel.dart';
import 'package:palcomtech_web/landing/menu/beranda.dart';
import 'package:palcomtech_web/landing/menu/pendaftaran.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    Beranda(),
    Pendaftaran(),
    Artikel(),
    AboutMe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _bottomNavCurrentIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.now_widgets,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.app_registration,
          ),
          label: 'Pendaftaran',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.newspaper,
          ),
          label: 'Artikel',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_pin_outlined,
          ),
          label: 'About Me',
        ),
      ],
    );
  }
}
