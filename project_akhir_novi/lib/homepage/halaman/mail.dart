import 'package:flutter/material.dart';

class Mail extends StatefulWidget {
  const Mail({super.key});

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            bottom: TabBar(
              indicatorColor: Colors.blueGrey,
              labelColor: Colors.blueGrey,
              isScrollable: true,
              tabs: [
                Tab(text: 'Dipesan'),
                Tab(text: 'Dikemas'),
                Tab(text: 'Dikirim'),
                Tab(text: 'Selesai'),
              ],
            ),
            centerTitle: true,
            title: Image.asset(
              '../assets/images/novi_logo.png',
              height: 50.0,
            )),
        body: TabBarView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p1.png'),
                      ),
                      title: Text('Wardah Cream'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p2.png'),
                      ),
                      title: Text('Wardah Acnederm'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p3.png'),
                      ),
                      title: Text('Wardah Renew'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p4.png'),
                      ),
                      title: Text('Wardah light'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p2.png'),
                      ),
                      title: Text('Wardah Acnederm'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p3.png'),
                      ),
                      title: Text('Wardah Renew'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p4.png'),
                      ),
                      title: Text('Wardah light'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p3.png'),
                      ),
                      title: Text('Wardah Renew'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p4.png'),
                      ),
                      title: Text('Wardah light'),
                      subtitle: Text('Rp 100000'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blueAccent[200],
                        child: Image.asset('../assets/images/p1.png'),
                      ),
                      title: Text('Wardah Cream'),
                      subtitle: Text('Rp 100000'),
                    ),
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
