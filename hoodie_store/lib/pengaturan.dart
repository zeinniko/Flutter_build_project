import 'dart:js_util';

import 'package:flutter/material.dart';

class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('../assets/bg.webp'),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_box,
                      color: Colors.amber,
                      size: 55.0,
                    ),
                    radius: 55.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 85.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.red),
                        child: Row(
                          children: [
                            Image.asset(
                              '../assets/icons/pinterest.png',
                              height: 22.0,
                              color: Colors.white,
                            ),
                            Text('Pinterest', style: TextStyle(fontFamily: ''),)
                          ],
                        ),
                      ),
                      Container(
                        width: 85.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 7, 69, 119)),
                        child: Row(
                          children: [
                            Image.asset(
                              '../assets/icons/facebook.png',
                              height: 22.0,
                              color: Colors.white,
                            ),
                            Text('Facebook', style: TextStyle(fontFamily: ''),)
                          ],
                        ),
                      ),
                      Container(
                        width: 85.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blue),
                        child: Row(
                          children: [
                            Image.asset(
                              '../assets/icons/twitter.png',
                              height: 22.0,
                              color: Colors.white,
                            ),
                            Text('Twitter', style: TextStyle(fontFamily: ''),)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Pusat Bantuan'),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Customer Service'),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Privasi dan Keamanan'),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
