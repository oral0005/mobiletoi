import 'package:flutter/material.dart';
import '../widgets/header.dart'; // Импорт вашего Header
import '../widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            // 🔝 Изображение с текстом сверху
            Stack(
              children: [
                const Image(
                  image: AssetImage('assets/content1.png'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned.fill(
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0), // отступ сверху
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Свадьба',
                                style: TextStyle(
                                  fontSize: 44,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFA500),
                                  height: 1,
                                ),
                              ),
                              TextSpan(
                                text: ' - на высоте',
                                style: TextStyle(
                                  fontSize: 44,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  height: 1,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Удобный сервис аренды банкетных залов в твоем городе',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(0.5, 0.5),
                                blurRadius: 2,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SearchSection(),
            const SizedBox(height: 20),
           // "Как это работает" section integrated directly
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // "Как это работает" button
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6E9D1), // Light beige background
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'КАК ЭТО РАБОТАЕТ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFA500), // Orange text
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Title
                  const Text(
                    'Как найти тойxану\nв 3 шага',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Step 1
                  _buildStep(
                    icon: Icons.location_on,
                    title: 'Выберите город и дату',
                    subtitle: 'Укажите, где и когда нужен зал',
                  ),
                  const SizedBox(height: 30), // Increased padding between icons
                  // Step 2
                  _buildStep(
                    icon: Icons.business,
                    title: 'Найдите подходящий зал',
                    subtitle: 'Сравните предложения по цене, вместимости и услугам',
                  ),
                  const SizedBox(height: 30), // Increased padding between icons
                  // Step 3
                  _buildStep(
                    icon: Icons.phone,
                    title: 'Забронируйте онлайн',
                    subtitle: 'Свяжитесь напрямую или оставьте заявку',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Spacing before the new image
            // Добавляем content2.png
            const Image(
              image: AssetImage('assets/content2.png'),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep({required IconData icon, required String title, required String subtitle}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon with background
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFF6E9D1), // Light beige background
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 40, color: const Color(0xFFFFA500)), // Orange icon
        ),
        const SizedBox(width: 20),
        // Text (title and subtitle)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6B4E31), // Dark brown text
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}