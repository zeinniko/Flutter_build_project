import 'package:aulia_beauty/widget/appbar.dart';
import 'package:aulia_beauty/widget/footer.dart';
import 'package:flutter/material.dart';

class Me extends StatefulWidget {
  const Me({super.key});

  @override
  State<Me> createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AuliaAppBar(),
        body: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.pink[300]),
                child: Text(
                  '🚗 Free Shipping For Orders Above 99 AED 🚗',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Help Center',
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'About Us',
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Privacy and Security',
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Row(
                    children: [
                      Icon(Icons.logout_outlined),
                      Text('Sign In'),
                    ],
                  ),
                ),
              ),
              FooterAulia(),
            ],
          ),
        ),
      ),
    );
  }
}
