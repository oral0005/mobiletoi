import 'package:flutter/material.dart';
import 'package:mobiletoi/settings.dart';
import 'package:mobiletoi/widgets/step.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              'КАК ЭТО РАБОТАЕТ',
              style: TextStyle(
                fontSize: 16,
                color: AppSettings.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Как найти тойхану\nв 3 шага',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),
          const StepWidget(
            icon: Icons.location_on,
            title: 'Выберите город и дату',
            subtitle: 'Укажите, где и когда нужен зал',
          ),
          const SizedBox(height: 30),
          const StepWidget(
            icon: Icons.business,
            title: 'Найдите подходящий зал',
            subtitle: 'Сравните предложения по цене, вместимости и услугам',
          ),
          const SizedBox(height: 30),
          const StepWidget(
            icon: Icons.phone,
            title: 'Забронируйте онлайн',
            subtitle: 'Свяжитесь напрямую или оставьте заявку',
          ),
        ],
      ),
    );
  }
}