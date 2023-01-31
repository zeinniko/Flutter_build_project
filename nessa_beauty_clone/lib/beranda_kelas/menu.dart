import 'dart:async';

import 'package:nessa_beauty_clone/beranda_kelas/categories.dart';
import 'package:nessa_beauty_clone/beranda_kelas/explore.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'me.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 1);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) {
        return new ClassBottomNav();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "../assets/images/logo.png",
          height: 100.0,
          width: 200.0,
        ),
      ),
    );
  }
}

class ClassBottomNav extends StatefulWidget {
  const ClassBottomNav({super.key});

  @override
  State<ClassBottomNav> createState() => _ClassBottomNavState();
}

class _ClassBottomNavState extends State<ClassBottomNav> {
  int _navIndex = 0;
  List<Widget> _container = [
    Home(),
    Categories(),
    Explore(),
    Me(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_navIndex],
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _bottomNav() {
    void _onItemTapped(int index) {
      setState(() {
        _navIndex = index;
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _navIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category_outlined,
          ),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_sharp,
          ),
          label: 'Me',
        ),
      ],
      selectedItemColor: Colors.pink[300],
    );
  }
}
