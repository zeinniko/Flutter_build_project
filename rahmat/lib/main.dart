import 'package:flutter/material.dart';

import 'inbox.dart';
import 'pesan.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
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
    pesan(),
    inbox(),
    login(),
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
      type: BottomNavigationBarType.fixed,
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
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.assignment,
          ),
          icon: Icon(
            Icons.assignment,
          ),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.mail,
          ),
          icon: Icon(
            Icons.mail,
          ),
          label: 'Inbox',
        ),
      ],
    );
  }
}
