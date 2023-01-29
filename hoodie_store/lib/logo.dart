import 'dart:async';

import 'package:flutter/material.dart';

import 'beranda.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return Timer(
      duration,
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return Beranda();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150.0,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('../assets/logoku.jpg')),
          ),
        ),
      ),
    );
  }
}
