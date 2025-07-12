import 'package:flutter/material.dart';
import 'package:mobiletoi/widgets/contact.dart';
import 'package:mobiletoi/widgets/footer.dart';
import 'package:mobiletoi/widgets/step.dart';
import '../widgets/header.dart';
import '../widgets/search.dart';
import '../widgets/carousel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      endDrawer: const Sidebar(), // Add the Sidebar as drawer
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
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
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
            // "Как это работает" section
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6E9D1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'КАК ЭТО РАБОТАЕТ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFA500),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
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
                  StepWidget(
                    icon: Icons.location_on,
                    title: 'Выберите город и дату',
                    subtitle: 'Укажите, где и когда нужен зал',
                  ),
                  const SizedBox(height: 30),
                  // Step 2
                  StepWidget(
                    icon: Icons.business,
                    title: 'Найдите подходящий зал',
                    subtitle: 'Сравните предложения по цене, вместимости и услугам',
                  ),
                  const SizedBox(height: 30),
                  // Step 3
                  StepWidget(
                    icon: Icons.phone,
                    title: 'Забронируйте онлайн',
                    subtitle: 'Свяжитесь напрямую или оставьте заявку',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // content2.png
            const Image(
              image: AssetImage('assets/content2.png'),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6E9D1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'ПОЧЕМУ ВЫБИРАЮТ НАС?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFA500),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Мы предлагаем лучшие условия ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Step 1
                  StepWidget(
                    icon: Icons.attach_money,
                    title: 'Ценовая политика',
                    subtitle: 'Подходит для любого бюджета, постоянным клиентам — скидки и бонусы.',
                  ),
                  const SizedBox(height: 16),
                  // Step 2
                  StepWidget(
                    icon: Icons.watch,
                    title: 'Быстрое бронирование',
                    subtitle: 'Бронирование банкетного зала всего за 5 минут.',
                  ),
                  const SizedBox(height: 30),
                  // Step 3
                  StepWidget(
                    icon: Icons.business,
                    title: 'Свобода выбора',
                    subtitle: 'Здесь собраны автомобили на любой вкус и бюджет от наших партнеров',
                  ),
                  const SizedBox(height: 30),
                  // Step 4
                  StepWidget(
                    icon: Icons.chat,
                    title: 'Техническая поддержка',
                    subtitle: 'Есть вопрос? Обращайтесь в службу поддержки ToiBastar c 08:00 до 20:00, если у вас возникнут проблемы.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Carousel(),
            ContactSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}