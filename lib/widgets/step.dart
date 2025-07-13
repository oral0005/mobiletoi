import 'package:flutter/material.dart';
import 'package:mobiletoi/settings.dart';

class StepWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const StepWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppSettings.lightBeige,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 40, color: AppSettings.primaryColor),
        ),
        const SizedBox(width: 20),
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
                style: TextStyle(
                  fontSize: 14,
                  color: AppSettings.darkBrown,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}