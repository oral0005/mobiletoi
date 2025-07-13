import 'package:flutter/material.dart';
import 'package:mobiletoi/widgets/carousel.dart';

class CarouselSection extends StatefulWidget {
  const CarouselSection({super.key});

  @override
  State<CarouselSection> createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  final List<Map<String, String>> items = [
    {'image': 'assets/cafe.png', 'title': 'Кафе'},
    {'image': 'assets/restaurant.png', 'title': 'Ресторан'},
    {'image': 'assets/toihana.png', 'title': 'Тойхана'},
  ];

  @override
  Widget build(BuildContext context) {
    return Carousel(items: items);
  }
}