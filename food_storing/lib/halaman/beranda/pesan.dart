import 'package:flutter/material.dart';

class pesan extends StatefulWidget {
  const pesan({super.key});

  @override
  State<pesan> createState() => _pesanState();
}

class _pesanState extends State<pesan> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: 'Diproses',
            ),
            Tab(
              text: 'Selesai',
            ),
          ]),
          title: Text("Pesan"),
          backgroundColor: Colors.amber,
        ),
        body: TabBarView(
          children: [
            Icon(
              Icons.rice_bowl,
              size: 70.0,
            ),
            Icon(
              Icons.checklist,
              size: 70.0,
            ),
          ],
        ),
      ),
    );
  }
}
