import 'package:flutter/cupertino.dart';

class Product {
  final String title, image, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.id,
      required this.title,
      required this.image,
      required this.description,
      required this.price,
      required this.size,
      required this.color});
}

List<Product> cars = [
  Product(
      id: 1,
      title: "Sorento",
      image: "assets/images/sorento.png",
      description: dummyText,
      price: 40990,
      size: 12,
      color: Color(0xff4F6C8B)) ,
  Product(
      id: 2,
      title: "Telluride",
      image: "assets/images/telluride.png",
      description: dummyText,
      price: 50990,
      size: 11,
      color: Color(0xffC9D0D8)),
  Product(
      id: 3,
      title: "Sorento 2021",
      image: "assets/images/sorento2021.png",
      description: dummyText,
      price: 41990,
      size: 11,
      color: Color(0xff727C69)),
  Product(
      id: 4,
      title: "MayBack",
      image: "assets/images/mayback.png",
      description: dummyText,
      price: 90990,
      size: 11,
      color: Color(0xff4E515C)),
  Product(
      id: 5,
      title: "Tesla Model S",
      image: "assets/images/tesla.png",
      description: dummyText,
      price: 80990,
      size: 13,
      color: Color(0xff9E0712)),
  Product(
      id: 6,
      title: "Peugeot 5008",
      image: "assets/images/peugeot.png",
      description: dummyText,
      price: 51990,
      size: 11,
      color: Color(0xff023550)),
  Product(
      id: 7,
      title: "BMW",
      image: "assets/images/bmw.png",
      description: dummyText,
      price: 99990,
      size: 11,
      color: Color(0xff265189)),
  Product(
      id: 8,
      title: "Satafe",
      image: "assets/images/satafe.png",
      description: dummyText,
      price: 62990,
      size: 15,
      color: Color(0xff7E1316))
];

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
