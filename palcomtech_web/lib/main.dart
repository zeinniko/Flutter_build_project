import 'package:flutter/material.dart';
import 'package:palcomtech_web/widget/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LauncherPage(),
    );
  }
}
