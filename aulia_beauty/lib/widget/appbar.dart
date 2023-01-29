import 'package:flutter/material.dart';

class AuliaAppBar extends AppBar {
  AuliaAppBar()
      : super(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Image.asset(
            '../assets/images/logo.png',
            height: 55.0,
          ),
          centerTitle: true,
          actions: [
            SizedBox(
              width: 20.0,
            ),
            Image.asset(
              '../assets/icons/love.png',
              width: 32.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Image.asset(
              '../assets/icons/bag.png',
              width: 32.0,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Tab(
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 231, 231, 231),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 231, 231, 231),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 231, 231, 231),
                      ),
                    ),
                    labelText: 'What are you looking for?',
                  ),
                ),
              ),
            ],
          ),
        );
}
