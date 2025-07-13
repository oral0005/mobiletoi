import 'package:flutter/material.dart';
import 'package:mobiletoi/settings.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppSettings.footerBrown,
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 20,
            child: Image.asset(
              'assets/ToiBastar_logo.png',
              width: 105,
              height: 18,
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 60),
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
                    style: AppSettings.elevatedButtonStyle.copyWith(
                      padding: WidgetStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      ),
                      elevation: WidgetStateProperty.all(8),
                      shadowColor: WidgetStateProperty.all(Colors.black.withOpacity(0.3)),
                    ),
                    child: const Text(
                      'Стать партнёром',
                      style: TextStyle(
                        fontSize: 16,
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
                    'assets/google_play.png',
                    width: 120,
                    height: 40,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/app_store.png',
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
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'Политика конфиденциальности',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'Контакты',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'Пользовательское соглашение',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'О нас',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'Часто задаваемые вопросы',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'Условия',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    'Сбор и обработка персональных данных',
                    style: TextStyle(fontSize: 14, color: Colors.white),
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
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}