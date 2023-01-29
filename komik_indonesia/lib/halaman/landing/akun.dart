import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  const Akun({super.key});

  @override
  State<Akun> createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('../assets/images/logo1.png'),
                  radius: 55.0,
                ),
                Column(
                  children: [
                    Text('Firnando'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Creator Komik Indonesia'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Text('Anime'),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Text('Manhua'),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Text('Adventure'),
                ),
              ],
            ),
            Container(
              height: 700,
              margin: EdgeInsets.only(top: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Colors.blue, Color.fromARGB(255, 3, 39, 244)]),
              ),
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    bottom: TabBar(tabs: [
                      Tab(
                        child: Text('Upload'),
                      ),
                      Tab(
                        child: Text('TerAkhir Dibaca'),
                      ),
                      Tab(
                        child: Text('Dibagikan'),
                      ),
                    ]),
                  ),
                  body: TabBarView(
                    children: [
                      view1(),
                      view2(),
                      view3(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget view1() {
    return Center(
      child: Column(
        children: [
          Image.asset('../assets/icons/empty-folder.png', height: 150.0,),
          Text('Belum ada yang di upload'),
        ],
      ),
    );
  }

  Widget view2() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('../assets/images/a.png', height: 250.0, width: 140.0,),
              Image.asset('../assets/images/b.png', height: 250.0, width: 140.0,),
              Image.asset('../assets/images/c.png', height: 250.0, width: 140.0,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('../assets/images/d.png', height: 250.0, width: 140.0,),
              Image.asset('../assets/images/e.png', height: 250.0, width: 140.0,),
              Image.asset('../assets/images/f.png', height: 250.0, width: 140.0,),
            ],
          ),
        ],
      ),
    );
  }

  Widget view3() {
    return Center(
      child: Column(
        children: [
          Image.asset('../assets/icons/empty-folder.png', height: 150.0,),
          Text('Belum ada yang di bagikan'),
        ],
      ),
    );
  }
}
