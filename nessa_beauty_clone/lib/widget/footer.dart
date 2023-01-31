import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class FooterAulia extends StatefulWidget {
  const FooterAulia({super.key});

  @override
  State<FooterAulia> createState() => _FooterAuliaState();
}

class _FooterAuliaState extends State<FooterAulia> {
  final List<String> about = [
    'About Aulia',
    'Consumer Rights',
    'Disclaimer',
    'Privacy Policy',
    'Refer a Friend',
  ];
  final List<String> cs = [
    'shipping Information',
    'Return Information',
    'Order Tracking',
    "FAQ's",
    'MUA and Student Discount',
  ];
  final List<String> cu = [
    'customerservice@aulia.com',
  ];
  final List<String> sm = [
    'Social Media',
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Image.asset('../assets/images/about.png'),
          ),
          Container(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                items: about
                    .map((about) => DropdownMenuItem<String>(
                        value: about,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            about,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        )))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                buttonHeight: 40,
                buttonWidth: 300,
                itemHeight: 40,
              ),
            ),
          ),
          Container(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Customer Service',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                items: cs
                    .map((cs) => DropdownMenuItem<String>(
                        value: cs,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            cs,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        )))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                buttonHeight: 40,
                buttonWidth: 300,
                itemHeight: 40,
              ),
            ),
          ),
          Container(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Contact Us',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                items: cu
                    .map(
                      (cu) => DropdownMenuItem<String>(
                          value: cu,
                          child: Row(
                            children: [
                              Icon(Icons.mail),
                              TextButton(onPressed: () {}, child: Text(cu))
                            ],
                          )),
                    )
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                buttonHeight: 40,
                buttonWidth: 300,
                itemHeight: 40,
              ),
            ),
          ),
          Container(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                hint: Text(
                  'Sosial Media',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                items: sm
                    .map(
                      (sm) => DropdownMenuItem<String>(
                          value: sm,
                          child: Row(
                            children: [
                              Image.asset(
                                '../assets/icons/facebook.png',
                                height: 25.0,
                              ),
                              Image.asset(
                                '../assets/icons/instagram.png',
                                height: 25.0,
                              ),
                              Image.asset(
                                '../assets/icons/pinterest.png',
                                height: 25.0,
                              ),
                              Image.asset(
                                '../assets/icons/twitter.png',
                                height: 25.0,
                              ),
                            ],
                          )),
                    )
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                buttonHeight: 40,
                buttonWidth: 300,
                itemHeight: 40,
              ),
            ),
          ),
          Text(
            'OFFICE ADDRESS',
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}