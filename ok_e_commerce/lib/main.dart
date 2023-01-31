import 'package:flutter/material.dart';
import 'package:ok_e_commerce/halaman/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
      theme: ThemeData(
        fontFamily: 'FlashRogers',
      ),
    );
  }
}
