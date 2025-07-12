import 'package:flutter/material.dart';

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