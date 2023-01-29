import 'package:flutter/material.dart';

import '../../models.dart';
import '../detail/detailkomik.dart';

class ListKomik extends StatefulWidget {
  const ListKomik({super.key});

  @override
  State<ListKomik> createState() => _ListKomikState();
}

class _ListKomikState extends State<ListKomik> {
  List<KomikList> _komikList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _komikList.add(
      KomikList(
        image: Image.asset('../assets/images/daftar_komik/komik1.png',
            height: 80.0),
        title: "+99 Wooden Stick",
        chapter: "Chapter 45",
      ),
    );
    _komikList.add(
      KomikList(
        image: Image.asset('../assets/images/daftar_komik/komik2.png',
            height: 80.0),
        title: "1 Second",
        chapter: "Chapter 35",
      ),
    );
    _komikList.add(
      KomikList(
        image: Image.asset('../assets/images/daftar_komik/komik3.png',
            height: 80.0),
        title: "1/2 Prince",
        chapter: "Chapter 52",
      ),
    );
    _komikList.add(
      KomikList(
        image: Image.asset('../assets/images/daftar_komik/komik4.png',
            height: 80.0),
        title: "100.000 Layers Of Body",
        chapter: "Chapter 184",
      ),
    );
    _komikList.add(
      KomikList(
        image: Image.asset('../assets/images/daftar_komik/komik5.png',
            height: 80.0),
        title: "1st Year Max Level",
        chapter: "Chapter 24",
      ),
    );
    _komikList.add(
      KomikList(
        image: Image.asset('../assets/images/daftar_komik/komik6.png',
            height: 80.0),
        title: "48 Hours a Day",
        chapter: "Chapter 14",
      ),
    );
    _komikList.add(
      KomikList(
        image: Image.asset('../assets/images/daftar_komik/komik7.png',
            height: 80.0),
        title: "6 Worlds of Cultivation",
        chapter: "Chapter 31",
      ),
    );
    _komikList.add(
      KomikList(
        image: Image.asset(
          '../assets/images/daftar_komik/komik8.png',
          height: 80.0,
        ),
        title: "7Fates: Chakho",
        chapter: "Chapter 30",
      ),
    );
    _komikList.add(
      KomikList(
        image: Image.asset('../assets/images/daftar_komik/komik9.png',
            height: 80.0),
        title: "990k Ex-Life Hunter",
        chapter: "Chapter 85",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          '../assets/images/logo2.png',
          height: 150.0,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.blue, Color.fromARGB(255, 3, 39, 244)]),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Colors.blue, Color.fromARGB(255, 3, 39, 244)]),
              ),
              child: Text(
                'Cari Cepat',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color.fromARGB(255, 199, 199, 199)),
                        child: Text(
                          'Genre',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color.fromARGB(255, 199, 199, 199)),
                        child: Text(
                          'Status',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color.fromARGB(255, 199, 199, 199)),
                        child: Text(
                          'Type',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color.fromARGB(255, 199, 199, 199)),
                        child: Text(
                          'Order Default',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.search), Text('Cari')],
                    ),
                  ),
                  komikList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget komikList() {
    return SizedBox(
      child: Container(
        height: 450.0,
        margin: EdgeInsets.only(top: 8.0),
        child: GridView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: 9,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, position) {
            return _widgetKomik(_komikList[position]);
          },
        ),
      ),
    );
  }

  Widget _widgetKomik(KomikList komiklist) {
    return Container(
        child: GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => detailKomik()));
      },
      child: Column(
        children: <Widget>[
          komiklist.image,
          Text(
            komiklist.title,
            style: TextStyle(fontSize: 12.0),
          ),
          Text(
            komiklist.chapter,
            style: TextStyle(fontSize: 12.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 12.0,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 12.0,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 12.0,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 12.0,
              ),
              Icon(
                Icons.star_half,
                color: Colors.yellow,
                size: 12.0,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
