import 'package:flutter/material.dart';

class inbox extends StatefulWidget {
  const inbox({super.key});

  @override
  State<inbox> createState() => _inboxState();
}

class _inboxState extends State<inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INBOX', style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: Colors.blueGrey),),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text('Promo'),
            Container(
              height: 55.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                children: [
                  Card(
                    child: Icon(Icons.discount),
                  ),
                  Card(
                    child: Icon(Icons.discount),
                  ),
                  Card(
                    child: Icon(Icons.discount),
                  ),
                  Card(
                    child: Icon(Icons.discount),
                  ),
                  Card(
                    child: Icon(Icons.discount),
                  ),
                  Card(
                    child: Icon(Icons.discount),
                  ),
                  Card(
                    child: Icon(Icons.discount),
                  ),
                  Card(
                    child: Icon(Icons.discount),
                  ),
                  Card(
                    child: Icon(Icons.discount),
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 20.0,
                ),
                title: Text('nmama orang'),
                subtitle: Text('pesan-pesan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}