import 'package:aulia_beauty/detail/recomended.dart';
import 'package:aulia_beauty/widget/appbar.dart';
import 'package:aulia_beauty/widget/footer.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AuliaAppBar(),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      'Products',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Brands',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'On Sale',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
                isScrollable: true,
              ),
              title: Text(
                '🚗 Free Shipping For Orders Above 99 AED 🚗',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    backgroundColor: Colors.pink[300], fontSize: 15.0),
              ),
              backgroundColor: Colors.white,
            ),
            body: TabBarView(
              children: [
                showTab1(),
                showTab2(),
                showTab3(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showTab1() {
    return ListView(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Recomended()));
          },
          child: Container(
            height: 900,
            child: GridView(
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset(
                          '../assets/images/category/Bath_Body.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Bath Body',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset(
                          '../assets/images/category/Fragrances.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Fragrances',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child:
                          Image.asset('../assets/images/category/Gifting.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Gifting',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child:
                          Image.asset('../assets/images/category/Haircare.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Haircare',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset(
                          '../assets/images/category/Korean_Beauty.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Korean_Beauty',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child:
                          Image.asset('../assets/images/category/Make_up.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Make_up',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset('../assets/images/category/Men.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Men',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset(
                          '../assets/images/category/New_Arrivals.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'New_Arrivals',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset(
                          '../assets/images/category/Skin_Care.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Skin_Care',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: Image.asset(
                          '../assets/images/category/Tools_Brushes.jpg'),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Tools_Brushes',
                        textAlign: TextAlign.center,
                        style: TextStyle(backgroundColor: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        FooterAulia(),
      ],
    );
  }

  Widget showTab2() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('1'),
            radius: 20,
          ),
          Text('1foundation'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('A'),
            radius: 20,
          ),
          Text(
              'Absolute New York\nAderma\nAjmal Perfume\nAlkemie\nAllegresse\nAnastasia Beverly Hills\nAprilskin\nArdell\nAromatica\nAvene\nAxis-y'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('B'),
            radius: 20,
          ),
          Text(
              'Babyliss Pro\nBarry M\nBeardo\nBelif\nBenefit\nBenton\nBio Balance\nBioderma\nBioxidea\nBloop\nBodyboom\nBondi Sands\nBoucheron\nBoujee Beauty\nBourjois\nBritish Barbers Association\nBuddy Scrub\nButter London\nBy Wishtrend'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('C'),
            radius: 20,
          ),
          Text(
              'Cake\nCalifornia Mango\nCarter Beauty\nCatrice\nCentellian24\nCerave\nChakan Factory\nCharacter\nChopard\nChristian Laurent\nCoach\nColorwow\nCorine De Farme\nCosrx\nCrayola Beauty'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('D'),
            radius: 20,
          ),
          Text(
              'Davidoff\nDear Klairs\nDeborah Milano\nDelilah\nDermaflash\nDr. Pawpaw\nDr. Teals\nDucray\nE\nElegant Touch\nElie Saab\nErre Due\nEssence\nEsthederm\nEtude House\nEucerin\nEyecha\nEylure'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('F'),
            radius: 20,
          ),
          Text('Fedua\nFlormar\nForever52\nFormula 10.0.6'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('G'),
            radius: 20,
          ),
          Text(
              'Ga-de\nGarnier\nGentlemens Tonic\nGhd\nGiovanni\nGirlactik\nGlossy Make Up\nGosh\nGrace Day\nGrown Alchemist\nGuess'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('H'),
            radius: 20,
          ),
          Text(
              'Hank & Henry\nHask\nHeathcote & Ivory\nHeimish\nHelios\nHema\nHenua Organics\nHuda Beauty\nHydropeptide'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('I'),
            radius: 20,
          ),
          Text(
              'I Heart Revolution\nI Love\nInglot\nInnisfree\nInvisibobble\nIsadora\nIts Skin\nIxora'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('J'),
            radius: 20,
          ),
          Text('Jayjun\nJimmy Choo\nJkosmec\nJsoop'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('K'),
            radius: 20,
          ),
          Text(
              'K-secret\nKarl Lagerfeld\nKennedy & Co\nKhadija Cosmetics\nKroma Drama'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('L'),
            radius: 20,
          ),
          Text(
              'Loreal Paris\nLa Roche Posay\nLabello\nLador\nLaneige\nLanvin\nLee Stafford\nLip Smacker\nLolita Bonita\nLook At Me\nLookx\nLottie London'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('M'),
            radius: 20,
          ),
          Text(
              'Mad Hippie\nMade By Sunday\nMai Couture\nMakeup Eraser\nMakeup Revolution\nMarc Anthony\nMasque Bar\nMaui Moisture\nMax Factor\nMaybelline New York\nMcaffeine\nMii Cosmetics\nMinimalist\nMissha\nMonday\nMont Blanc\nMoremo\nMorris & Co.\nMy Organics'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('N'),
            radius: 20,
          ),
          Text(
              'Nacific\nNak\nNascita\nNeogen\nNeon & Co\nNeuma\nNg Perfumes\nNike\nNina Ubhi\nNiran\nNivea\nNote Cosmetics\nNow\nNuface'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('O'),
            radius: 20,
          ),
          Text(
              'Ogx\nOh So Heavenly\nOlaplex\nOpi\nOrganic Harvest\nOscar De La Renta'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('P'),
            radius: 20,
          ),
          Text(
              'Palladio\nPaperself\nPatchology\nPaul Mitchell\nPaxmoly\nPeripera\nPestle & Mortar\nPetite Maison\nKingsley\nPhilipp Plein\nPhysicians Formula\nPielor\nPinky Goat\nPlum\nPmd\nPrima Lash\nProject Lip\nProvoc\nPura Botanicals\nPurederm'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('Q'),
            radius: 20,
          ),
          Text('Quret'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('R'),
            radius: 20,
          ),
          Text(
              'Real Techniques\nRevlon\nRevolution Haircare\nRevolution Pro\nRevolution Skincare\nRimmel London\nRituals\nRoberto Cavalli\nRochas\nRodial\nRoll On Jade\nRoots & Herbs\nRoutine\nRubys Organics\nRude\nRustic Art'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('A'),
            radius: 20,
          ),
          Text('1foundation'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('S'),
            radius: 20,
          ),
          Text(
              'S.t. Dupont\nSachajuan\nSally Hansen\nSalt & Stone\nSalt By Hendrix\nSara Miller\nSensation\nSensica\nSiella Beauty\nSigma Beauty\nSkin & Lab\nSkin Proud\nSoda\nSome By Mi\nSoo’ae\nSoskin\nSouffle Beauty\nSpongelle\nSukin\nSwiss Image'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('T'),
            radius: 20,
          ),
          Text(
              'T-zone\nTangle Teezer\nThe Balm\nThe Crème Shop\nThe Dubai Dolls\nThe Face Shop\nThe Ordinary\nThis Works\nTigi Bedhead\nTouch In Sol\nU\nUnicorn Glow'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('V'),
            radius: 20,
          ),
          Text(
              'Vaadi Organics\nVichy\nVictoria Beauty\nViseart\nVoce Haircare'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Text('W'),
            radius: 20,
          ),
          Text('Wakeup Cosmetics Milano\nWet N Wild'),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          FooterAulia()
        ],
      ),
    );
  }

  Widget showTab3() {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10.0),
          height: 200,
          child: GridView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/40314-1.jpg?v=1633443095',
                              height: 150.0,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.pink[300],
                              child: Text('20%'),
                            )
                          ],
                        ),
                        Text(
                          'NuFace',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          'NuFace Trinity Facial',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          'Rp 300.000',
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.pink[300]),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Add to bag',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.pink[300],
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text(
                            'Express',
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/41124-5.jpg?v=1633442861',
                              height: 150.0,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.pink[300],
                              child: Text('20%'),
                            )
                          ],
                        ),
                        Text(
                          'NuFace',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          'NuFace Trinity ProBreak',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          'Rp 350.000',
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.pink[300]),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Add to bag',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.pink[300],
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text(
                            'Express',
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/931006-1.jpg?v=1633443256',
                              height: 150.0,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.pink[300],
                              child: Text('20%'),
                            )
                          ],
                        ),
                        Text(
                          'Sesimactch',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          'Sesimactch',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          'Rp 400.000',
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.pink[300]),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Add to bag',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.pink[300],
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text(
                            'Express',
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              'https://cdn.shopify.com/s/files/1/0601/2849/3784/products/41114-1.png?v=1633443017',
                              height: 150.0,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.pink[300],
                              child: Text('20%'),
                            )
                          ],
                        ),
                        Text(
                          'NuFace',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          'NuFace Trinity BreakIce',
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          'Rp 350.000',
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.pink[300]),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Add to bag',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.pink[300],
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text(
                            'Express',
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        FooterAulia(),
      ],
    );
  }
}
