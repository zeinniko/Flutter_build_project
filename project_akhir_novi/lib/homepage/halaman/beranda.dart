import 'package:flutter/material.dart';
import 'package:project_akhir_novi/homepage/halaman/produkpage.dart';
import 'package:project_akhir_novi/list/produk.dart';
import 'package:project_akhir_novi/list/variabel.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey[200],
            bottom: TabBar(
                indicatorColor: Colors.blueGrey,
                labelColor: Colors.blueGrey,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'Rekomendasi',
                  ),
                  Tab(
                    text: 'Terbaru',
                  ),
                  Tab(
                    text: 'Daftar Produk',
                  ),
                ]),
            centerTitle: true,
            title: Image.asset(
              '../assets/images/novi_logo.png',
              height: 50.0,
            )),
        body: TabBarView(
          children: [
            view(),
            view2(),
            view3(),
          ],
        ),
      ),
    );
  }

  Widget view() {
    return Container(
      child: Expanded(
        child: Container(
          margin: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              childAspectRatio: 0.78,
            ),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              Products product = products[index];
              return GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Pemesanan(product: product);
                })),
                child: Container(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: product.color,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image(
                            image: AssetImage(product.image),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                " ${products[index].title}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: textColorLight,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                " \Rp ${products[index].price.toString()}",
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget view2() {
    return Container(
      child: Expanded(
        child: Container(
          margin: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              childAspectRatio: 0.78,
            ),
            itemCount: terbaruh.length,
            itemBuilder: (BuildContext context, int index) {
              Terbaruh terbaru = terbaruh[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: terbaru.color,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image(
                            image: AssetImage(terbaru.image),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                " ${terbaruh[index].title}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: textColorLight,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                " \Rp ${terbaruh[index].price.toString()}",
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget view3() {
    return Container(
      child: Expanded(
        child: Container(
          margin: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              childAspectRatio: 0.78,
            ),
            itemCount: daftar.length,
            itemBuilder: (BuildContext context, int index) {
              Daftar daftars = daftar[index];
              return GestureDetector(
                onTap: () {},
                child: Container(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: daftars.color,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image(
                            image: AssetImage(daftars.image),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                " ${daftar[index].title}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: textColorLight,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                " \Rp ${daftar[index].price.toString()}",
                                style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
