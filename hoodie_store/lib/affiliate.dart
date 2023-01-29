import 'package:flutter/material.dart';

class Affiliate extends StatefulWidget {
  const Affiliate({super.key});

  @override
  State<Affiliate> createState() => _AffiliateState();
}

class _AffiliateState extends State<Affiliate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Image.network(
                        '../assets/icons/affiliate.png',
                        height: 32.0,
                      ),
                      Text('Affiliasi')
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Image.network(
                        '../assets/icons/gear.png',
                        height: 32.0,
                      ),
                      Text('Program Info')
                    ],
                  ),
                ),
              ],
            ),
            centerTitle: true,
            title: Text(
              "HOODIE STORE",
              style: TextStyle(fontFamily: 'LeagueSpartan-Bold', color: Colors.white),
            )),
        body: TabBarView(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: ListView(
                  children: [
                    Text('Data Affiliate'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        '../assets/icons/referral.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Referral Code'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Text('https://hoodie-store/r/scbd50'),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                        'bagikan code link diatas untuk mendapatkan bonus affiliasi'),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            '../assets/icons/instagram.png',
                            height: 32.0,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            '../assets/icons/pinterest.png',
                            height: 32.0,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            '../assets/icons/twitter.png',
                            height: 32.0,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            '../assets/icons/facebook.png',
                            height: 32.0,
                          ),
                        ),
                        CircleAvatar(
                          child: Icon(Icons.share)
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                        'Affiliate Program adalah kegiatan kerja pasif dengan membagikan link kepada teman dan kerabat melalui media sosial dan akan mendapatkan komisi berupa voucher yang nantinya akan dapat ditarik ke rekening pemilik'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                        'KETENTUAN \n 1. Pengguna yang dapat mengikuti program ini merupakan pengguna yang sudah menyelesaikan pendaftaran data diri di aplikasi Hoodie Store \n 2. Setiap Pengguna yang yang membagikan link refferalnya dan berhasil melakukan check-out pengguna tersebut berhak mendapatkan 1,7% dari harga produk dan berlaku +0,1% untuk kelipatan 2 setiap produk \n 3. Minimal penarikan komisi adalah Rp. 50.000.'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
