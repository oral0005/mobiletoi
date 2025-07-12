import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'image': 'assets/cafe.png', 'title': 'Кафе'},
    {'image': 'assets/restaurant.png', 'title': 'Ресторан'},
    {'image': 'assets/toihana.png', 'title': 'Тойхана'},
  ];

  Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 610,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Каталог',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            height: 345,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Card(
                    elevation: 0, // Removed shadow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      width: 255,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image(
                              image: AssetImage(item['image']!),
                              height: 345,
                              width: 255,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 0,
                            right: 0,
                            child: Text(
                              item['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 24, // Increased font size
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}