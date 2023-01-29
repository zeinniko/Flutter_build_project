import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_akhir_novi/homepage/hompage.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      icon: Icon(
                        Icons.logout,
                        color: Colors.lightGreen,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('../assets/images/profil.jpg'),
                  radius: 70,
                ),
                Text(
                  "Novi Risa Linardy",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Informasi profile saya",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 70.0,
              child: ListView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                child: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/196/196578.png'),
                ),
              ),
              Card(
                child: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/196/196566.png'),
                ),
              ),
              Card(
                child: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/888/888848.png'),
                ),
              ),
              Card(
                child: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/38/38978.png'),
                ),
              ),
              Card(
                child: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/196/196546.png'),
                ),
              ),
              Card(
                child: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/196/196572.png'),
                ),
              ),
              Card(
                child: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/196/196543.png'),
                ),
              ),
              Card(
                child: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/196/196577.png'),
                ),
              ),
            ],
          )),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.lightGreen,
                    child: Icon(
                      Icons.key,
                      color: Colors.white,
                    ),
                  ),
                  title: Text('Akun'),
                  subtitle: Text('edit informasi akun'),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.lightGreen,
                    child: Icon(
                      Icons.chat_bubble,
                      color: Colors.white,
                    ),
                  ),
                  title: Text('Kontak'),
                  subtitle: Text('informasi kontak pengembang'),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.lightGreen,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                  title: Text('Informasi'),
                  subtitle: Text('informasi promo, dan update'),
                ),
                Divider(
                  thickness: 1,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.lightGreen,
                    child: Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                  ),
                  title: Text('Bantuan'),
                  subtitle: Text('pusat bantuan dan privasi akun'),
                ),
                Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Center(
            child: Text('Version 1'),
          ),
        ],
      ),
    );
  }
}
