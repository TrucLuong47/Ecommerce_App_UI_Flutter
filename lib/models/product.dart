import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 0,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.blueAccent,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isPopular: true,
  ),
  Product(
    id: 1,
    images: [
      "assets/images/Image Popular Product 2.png",
      "assets/images/Image Popular Product 2.png",
      "assets/images/Image Popular Product 2.png",
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.redAccent,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/glap.png",
      "assets/images/glap.png",
      "assets/images/glap.png",
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.cyanAccent,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 3.9,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/wireless headset.png",
      "assets/images/wireless headset.png",
      "assets/images/wireless headset.png",
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.greenAccent,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 3.5,
  ),
];

const String description =
    "The Wireless Controller for PS4™ is the perfect gaming companion that offers a seamless gaming experience with its precision control capabilities. \n\nWith its wireless connectivity, you can enjoy uninterrupted gaming sessions without the hassle of tangled wires. The controller also allows you to share your gaming moments with friends and family through its share button feature. \n\nWhether you are a hardcore gamer or a casual player, the Wireless Controller for PS4™ gives you the ultimate control and comfort you need to take your gaming to the next level.";
