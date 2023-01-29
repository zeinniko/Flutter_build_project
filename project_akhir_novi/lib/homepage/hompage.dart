import 'package:flutter/material.dart';
import 'dart:async';
import 'package:project_akhir_novi/homepage/halaman/beranda.dart';
import 'package:project_akhir_novi/homepage/halaman/mail.dart';
import 'package:project_akhir_novi/homepage/halaman/akun.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new LandingPage();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "../assets/images/logo.png",
          height: 250.0,
          width: 350.0,
        ),
      ),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    Beranda(),
    Mail(),
    Profile(),
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
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blueGrey,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.mail,
          ),
          icon: Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          label: 'Pesan',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.person,
          ),
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: 'Akun',
        ),
      ],
    );
  }
}
