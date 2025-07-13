import 'package:flutter/material.dart';
import 'package:mobiletoi/settings.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF9ED),
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
          Text(
            'Адрес:',
            style: TextStyle(
              fontSize: 16,
              color: AppSettings.darkBrown,
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
          Text(
            'Время работы:',
            style: TextStyle(
              fontSize: 16,
              color: AppSettings.darkBrown,
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
          Text(
            'Телефон:',
            style: TextStyle(
              fontSize: 16,
              color: AppSettings.darkBrown,
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
          Text(
            'E-mail:',
            style: TextStyle(
              fontSize: 16,
              color: AppSettings.darkBrown,
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
          Text(
            'Соц. сети:',
            style: TextStyle(
              fontSize: 16,
              color: AppSettings.darkBrown,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.telegram, color: AppSettings.primaryColor, size: 30),
              SizedBox(width: 10),
              Icon(Icons.wechat, color: AppSettings.primaryColor, size: 30),
              SizedBox(width: 10),
              Icon(Icons.camera_alt, color: AppSettings.primaryColor, size: 30),
            ],
          ),
        ],
      ),
    );
  }
}