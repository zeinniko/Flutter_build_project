import 'package:flutter/material.dart';
import 'package:ren_project/halaman/halaman_landing.dart';
import 'package:ren_project/variabel.dart';

class halamanIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Selamat datang di RenCommerce!",
      "image": "../assets/splash_1.png"
    },
    {
      "text": "Kami membantu menghubungkan pembeli \ndengan Toko",
      "image": "../assets/splash_2.png"
    },
    {
      "text": "Belanja simple dan pasti ori. \nhanya di RenCommerce",
      "image": "../assets/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    MaterialButton(
                      color: renColor.bora,
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(builder: (_) {
                          return halamanLanding();
                        }));
                      },
                      child: Text(
                        'Berikutnya',
                        style: TextStyle(
                          fontFamily: 'FlashRogers',
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: Duration(seconds: 10),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Ren Commerce",
          style: TextStyle(
            fontFamily: 'FlashRogers',
            fontSize: 36.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'FlashRogers'
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Image.asset(
          image!,
          height: 290.0,
          width: 290.0,
        ),
      ],
    );
  }
}
