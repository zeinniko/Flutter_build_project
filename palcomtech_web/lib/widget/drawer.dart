import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Image.asset(
            '../assets/images/logo.png',
            height: 100.0,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Beranda',
                    )),
                Divider(
                  thickness: 1,
                  color: Colors.black45,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Pendaftaran',
                    )),
                Divider(
                  thickness: 1,
                  color: Colors.black45,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Artikel',
                    )),
                Divider(
                  thickness: 1,
                  color: Colors.black45,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'About Palcomtech',
                    )),
                Divider(
                  thickness: 1,
                  color: Colors.black45,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'FAQ',
                    )),
                Divider(
                  thickness: 1,
                  color: Colors.black45,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
