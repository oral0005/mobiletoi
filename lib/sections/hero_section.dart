import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}