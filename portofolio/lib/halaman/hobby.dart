import 'package:flutter/material.dart';

class Hobby extends StatefulWidget {
  const Hobby({super.key});

  @override
  State<Hobby> createState() => _HobbyState();
}

class _HobbyState extends State<Hobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hobby'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 218, 255),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    '../assets/images/camera.png',
                    height: 32.0,
                  ),
                  Text('My Hobby'),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black)
                ),
                child: Column(
                  children: [
                    Container(
                      width: 200.0,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.fromLTRB(10, 10, 150, 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.0),
                          color: Color.fromARGB(255, 214, 214, 214)),
                      child: Text(
                          'hobby saya adalah membuat sebuah gambar menjadi lebih bermakna dan memiliki nilai seni di setiap tangkapan foto'),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Image.asset('../assets/images/idea.png', height: 150.0,),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
