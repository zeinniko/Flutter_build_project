import 'package:flutter/material.dart';
import 'package:tokko_hijab/aboutme.dart';
import 'package:tokko_hijab/homepage.dart';
import 'package:tokko_hijab/product.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    MyHomePage(),
    Product(),
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
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopify,
          ),
          label: 'Product',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.location_on_outlined,
          ),
          label: 'About Me',
        ),
      ],
    );
  }
}
