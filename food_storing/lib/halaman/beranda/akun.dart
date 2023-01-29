import 'package:flutter/material.dart';

class akun extends StatefulWidget {
  const akun({super.key});

  @override
  State<akun> createState() => _akunState();
}

class _akunState extends State<akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('../images/profil.jpg'),
              radius: 70.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                  ),
                  child: Text('Akun Pengguna Aktif'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                  ),
                  child: Text('Reni'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                  ),
                  child: Text('0896782654'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: 100.0,
                    alignment: Alignment.center,
                    child: Row(
                      children: [Icon(Icons.logout), Text('Log Out')],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
