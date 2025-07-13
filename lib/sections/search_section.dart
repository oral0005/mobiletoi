import 'package:flutter/material.dart';
import 'package:mobiletoi/widgets/search.dart';

class SearchSectionWrapper extends StatelessWidget {
  SearchSectionWrapper({super.key}); // Removed 'const' here

  final List<String> cities = [
    "Астана", "Алматы", "Шымкент", "Караганда", "Актобе", "Тараз", "Павлодар", "Усть-Каменогорск",
    "Семей", "Кокшетау", "Актау", "Атырау", "Костанай", "Петропавловск", "Туркестан", "Уральск",
    "Жезказган", "Темиртау", "Рудный", "Экибастуз", "Талдыкорган", "Кызылорда", "Байконур",
    "Сарыагаш", "Степногорск", "Атбасар", "Шалкар", "Аральск"
  ];

  @override
  Widget build(BuildContext context) {
    return SearchSection(cities: cities);
  }
}