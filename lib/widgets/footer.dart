import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF89650B), // Brown background from image
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          // Logo positioned at the top-left
          Positioned(
            left: 0,
            top: 20,
            child: Image.asset(
              'assets/ToiBastar_logo.png', // Replace with actual logo asset path
              width: 105,
              height: 18,
            ),
          ),
          // Main content
          Column(
            children: [
              // Add top padding to avoid overlap with the logo
              const SizedBox(height: 60), // Adjust based on logo height
              const Text(
                'Если вы представляете компанию по аренде автомобилей и хотите присоединиться к нашей сети партнёров, свяжитесь с нами. Мы открыты для сотрудничества и готовы предложить взаимовыгодные условия.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFA500),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        elevation: 8, // Adds shadow depth
        shadowColor: Colors.black.withOpacity(0.3), // Shadow color with opacity
      ),
      child: const Text(
        'Стать партнёром',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  ],
),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/google_play.png', // Placeholder, replace with actual asset
                    width: 120,
                    height: 40,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/app_store.png', // Placeholder, replace with actual asset
                    width: 120,
                    height: 40,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 24,
                children: const [
                  Text(
                    'Главная',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Политика конфиденциальности',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Контакты',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Пользовательское соглашение',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'О нас',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Часто задаваемые вопросы',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Условия',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Сбор и обработка персональных данных',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, color: Colors.white, size: 20),
                  SizedBox(width: 10),
                  Icon(Icons.phone, color: Colors.white, size: 20),
                  SizedBox(width: 10),
                  Icon(Icons.camera_alt, color: Colors.white, size: 20),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                '© 2025 ToiBastar® Global Inc.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}