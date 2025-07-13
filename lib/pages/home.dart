import 'package:flutter/material.dart';
import 'package:mobiletoi/sections/hero_section.dart';
import 'package:mobiletoi/sections/how_it_works_section.dart';
import 'package:mobiletoi/sections/why_choose_us_section.dart';
import 'package:mobiletoi/sections/contact_section.dart';
import 'package:mobiletoi/sections/footer_section.dart';
import 'package:mobiletoi/widgets/header.dart';
import 'package:mobiletoi/widgets/bottomnav.dart';
import 'package:mobiletoi/sections/carousel_section.dart';
import 'package:mobiletoi/sections/search_section.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      endDrawer: const Sidebar(),
      backgroundColor: Colors.white,
      body: const BottomNav(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          const HeroSection(),
          const SizedBox(height: 20),
          SearchSectionWrapper(),
          const SizedBox(height: 20),
          const HowItWorksSection(),
          const SizedBox(height: 20),
          const WhyChooseUsSection(),
          const SizedBox(height: 20),
          const CarouselSection(),
          const ContactSection(),
          const FooterSection(),
        ],
      ),
    );
  }
}