import 'package:flutter/material.dart';
import 'package:mobiletoi/settings.dart';
import 'package:mobiletoi/widgets/step.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  color: AppSettings.lightBeige,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'ПОЧЕМУ ВЫБИРАЮТ НАС?',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppSettings.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Мы предлагаем лучшие условия',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              const StepWidget(
                icon: Icons.attach_money,
                title: 'Ценовая политика',
                subtitle:
                    'Подходит для любого бюджета, постоянным клиентам — скидки и бонусы.',
              ),
              const SizedBox(height: 16),
              const StepWidget(
                icon: Icons.watch,
                title: 'Быстрое бронирование',
                subtitle: 'Бронирование банкетного зала всего за 5 минут.',
              ),
              const SizedBox(height: 30),
              const StepWidget(
                icon: Icons.business,
                title: 'Свобода выбора',
                subtitle:
                    'Здесь собраны автомобили на любой вкус и бюджет от наших партнеров',
              ),
              const SizedBox(height: 30),
              const StepWidget(
                icon: Icons.chat,
                title: 'Техническая поддержка',
                subtitle:
                    'Есть вопрос? Обращайтесь в службу поддержки ToiBastar c 08:00 до 20:00, если у вас возникнут проблемы.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}