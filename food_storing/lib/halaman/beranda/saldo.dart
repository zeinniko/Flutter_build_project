import 'package:flutter/material.dart';

class saldo extends StatefulWidget {
  const saldo({super.key});

  @override
  State<saldo> createState() => _saldoState();
}

class _saldoState extends State<saldo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Saldo'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100.0,
              width: 50.0,
              padding: EdgeInsets.all(15.0),
              margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber),
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saldo',
                    style: TextStyle(fontSize: 32.0),
                  ),
                  Text(
                    'Rp. 100,000',
                    style: TextStyle(fontSize: 32.0),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.payment),
                        Text('Pembayaran'),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.transfer_within_a_station),
                        Text('Isi Saldo'),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      color: Colors.yellow[100],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.upload),
                        Text('Upload Struct'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
              child: Row(
                children: [
                  Icon(Icons.info),
                  Text(
                      'PEMBAYARAN DAPAT DILAKUKAN DENGAN\nMETODE DIBAWAH ATAU DENGAN SCAN QR-CODE')
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Image.asset('../images/wallet.png'),
            )
          ],
        ),
      ),
    );
  }
}
