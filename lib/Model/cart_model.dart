import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;
  final String imgUrl;
  final Color color;
  final String desc;
  final List pics;

  Product({
    required this.name,
    required this.price,
    required this.imgUrl,
    required this.color,
    required this.desc,
    required this.pics,
  });

  static List<Product> products = [
    Product(
      name: "Amthal w Akwal",
      price: 12,
      imgUrl: 'assets/prod01.jpg',
      color: Colors.blue.shade50,
      desc:
          "لوحة قماشية جدارية تفتح نافذة الى داخلك بلطف أن تحرّر نفسك من نفسك لَهيَ رحلة طويلة بلا نهاية، ومكابدة مستمرة بلا توقف",
      pics: [
        "mirror5.jpg",
        "mirror3.jpg",
      ],
    ),
    Product(
      name: "Coding Without Computer",
      price: 12,
      imgUrl: 'assets/prod02.jpg',
      color: Colors.blue.shade50,
      desc:
          "لوحة قماشية جدارية تفتح نافذة الى داخلك بلطف أن تحرّر نفسك من نفسك لَهيَ رحلة طويلة بلا نهاية، ومكابدة مستمرة بلا توقف",
      pics: [
        "mirror5.jpg",
        "mirror3.jpg",
      ],
    ),
    Product(
      name: "Emaaat",
      price: 10,
      imgUrl: "assets/prod03.jpg",
      color: Colors.purple.shade50,
      desc:
          "العناية بذاتك بطولة - هذه ضحكة على وجهك أم نور على قلبي - وجودك عافية لقلبي - كيف حال",
      pics: [
        "mirror5.jpg",
        "mirror3.jpg",
      ],
    ),
  ];
}
