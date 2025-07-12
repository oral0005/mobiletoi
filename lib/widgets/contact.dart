import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF9ED), // Light beige background from image
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Наши контакты',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Адрес:',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6B4E31),
            ),
          ),
          const Text(
            '160000, г. Шымкент',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Время работы:',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6B4E31),
            ),
          ),
          const Text(
            'Ежедневно 08:00 до 20:00',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Телефон:',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6B4E31),
            ),
          ),
          const Text(
            '+7 777 060 80 31',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'E-mail:',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6B4E31),
            ),
          ),
          const Text(
            'info@ToiBastar.kz',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Соц. сети:',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF6B4E31),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.telegram, color: Color(0xFFFFA500), size: 30),
              SizedBox(width: 10),
              Icon(Icons.wechat, color: Color(0xFFFFA500), size: 30),
              SizedBox(width: 10),
              Icon(Icons.camera_alt, color: Color(0xFFFFA500), size: 30),
            ],
          ),
        ],
      ),
    );
  }
}