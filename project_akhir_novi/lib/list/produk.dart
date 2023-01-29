import 'package:flutter/cupertino.dart';

class Products {
  String image;
  String title;
  String description;
  int price;
  int size;

  Color color;

  Products(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.color});
}

class Terbaruh {
  String image;
  String title;
  String description;
  int price;
  int size;

  Color color;

  Terbaruh(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.color});
}

class Daftar {
  String image;
  String title;
  String description;
  int price;
  int size;

  Color color;

  Daftar(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.color});
}

List<Products> products = [
  Products(
      title: "Wardah Cream",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p1.png",
      color: Color.fromARGB(255, 61, 174, 63)),
  Products(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p2.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Products(
      title: "Wardah Renew",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p3.png",
      color: Color.fromARGB(255, 111, 154, 223)),
  Products(
      title: "Wardah light",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p4.png",
      color: Color(0xFFE6B398)),
  Products(
      title: "Wardah Serum",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p5.png",
      color: Color(0xFFFB7883)),
  Products(
    title: "Wardah Facial",
    price: 100000,
    size: 150,
    description: dummyText,
    image: "../assets/images/p6.png",
    color: Color.fromARGB(255, 111, 154, 223),
  ),
  Products(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p7.png",
      color: Color(0xFF3D82AE)),
  Products(
      title: "Wardah Damm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p8.png",
      color: Color(0xFFD3A984)),
  Products(
      title: "Wardah Defense",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p9.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Products(
      title: "Wardah NightCream",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p10.png",
      color: Color(0xFFE6B398)),
  Products(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p11.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Products(
    title: "Wardah Acnederm",
    price: 100000,
    size: 150,
    description: dummyText,
    image: "../assets/images/p12.png",
    color: Color(0xFFAEAEAE),
  ),
];
List<Terbaruh> terbaruh = [
  Terbaruh(
      title: "Wardah light",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p4.png",
      color: Color(0xFFE6B398)),
  Terbaruh(
      title: "Wardah Serum",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p5.png",
      color: Color(0xFFFB7883)),
  Terbaruh(
    title: "Wardah Facial",
    price: 100000,
    size: 150,
    description: dummyText,
    image: "../assets/images/p6.png",
    color: Color.fromARGB(255, 111, 154, 223),
  ),
  Terbaruh(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p7.png",
      color: Color(0xFF3D82AE)),
  Terbaruh(
      title: "Wardah Cream",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p1.png",
      color: Color.fromARGB(255, 61, 174, 63)),
  Terbaruh(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p2.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Terbaruh(
      title: "Wardah Renew",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p3.png",
      color: Color.fromARGB(255, 111, 154, 223)),
  Terbaruh(
      title: "Wardah Damm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p8.png",
      color: Color(0xFFD3A984)),
  Terbaruh(
      title: "Wardah Defense",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p9.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Terbaruh(
      title: "Wardah NightCream",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p10.png",
      color: Color(0xFFE6B398)),
  Terbaruh(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p11.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Terbaruh(
    title: "Wardah Acnederm",
    price: 100000,
    size: 150,
    description: dummyText,
    image: "../assets/images/p12.png",
    color: Color(0xFFAEAEAE),
  ),
];
List<Daftar> daftar = [
  Daftar(
      title: "Wardah Defense",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p9.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Daftar(
      title: "Wardah NightCream",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p10.png",
      color: Color(0xFFE6B398)),
  Daftar(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p11.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Daftar(
      title: "Wardah Cream",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p1.png",
      color: Color.fromARGB(255, 61, 174, 63)),
  Daftar(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p2.png",
      color: Color.fromARGB(255, 191, 132, 211)),
  Daftar(
      title: "Wardah Renew",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p3.png",
      color: Color.fromARGB(255, 111, 154, 223)),
  Daftar(
      title: "Wardah light",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p4.png",
      color: Color(0xFFE6B398)),
  Daftar(
      title: "Wardah Serum",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p5.png",
      color: Color(0xFFFB7883)),
  Daftar(
    title: "Wardah Facial",
    price: 100000,
    size: 150,
    description: dummyText,
    image: "../assets/images/p6.png",
    color: Color.fromARGB(255, 111, 154, 223),
  ),
  Daftar(
      title: "Wardah Acnederm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p7.png",
      color: Color(0xFF3D82AE)),
  Daftar(
      title: "Wardah Damm",
      price: 100000,
      size: 150,
      description: dummyText,
      image: "../assets/images/p8.png",
      color: Color(0xFFD3A984)),
  Daftar(
    title: "Wardah Acnederm",
    price: 100000,
    size: 150,
    description: dummyText,
    image: "../assets/images/p12.png",
    color: Color(0xFFAEAEAE),
  ),
];
String dummyText =
    "Produk ini banyak diminati oleh \nbanyak orang terutama untuk \nmenjaga perawatan wajah.";
