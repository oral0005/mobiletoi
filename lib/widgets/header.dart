import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        width: double.infinity,
        height: 57,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFF4F4F4),
              width: 1,
            ),
          ),
        ),
        child: Stack(
          children: [
            // Logo and Text (ToiBastar)
            Positioned(
              left: 21,
              top: 0,
              bottom: 0,
              child: Row(
                children: [
                  Image.asset(
                    'assets/ToiBastar_logo.png',
                    width: 105,
                    height: 18,
                  ),
                ],
              ),
            ),
            // Animated Dropdown Menu
            Positioned(
              right: 16,
              top: 0,
              bottom: 0,
              child: PopupMenuButton<String>(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 25,
                ),
                offset: const Offset(0, 40), // Adjusts dropdown position
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.white, // White background for dropdown
                elevation: 8, // Shadow for dropdown
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    _buildAnimatedMenuItem('Главная', 'Home'),
                    _buildAnimatedMenuItem('Банкетные залы', 'BanquetHalls'),
                    _buildAnimatedMenuItem('О нас', 'About'),
                    _buildAnimatedMenuItem('Контакты', 'Contacts'),
                    _buildAddOrganizationMenuItem('Добавить организацию', 'AddOrganization'),
                  ];
                },
                onSelected: (String value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Selected: $value')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildAnimatedMenuItem(String title, String value) {
    return PopupMenuItem<String>(
      value: value,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildAddOrganizationMenuItem(String title, String value) {
    return PopupMenuItem<String>(
      value: value,
      child: Column(
        children: [
          const SizedBox(height: 16), // gap-4 equivalent
          SizedBox(
            width: double.infinity, // Make button fill width
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFA500), // bg-[#FFA500]
                foregroundColor: Colors.white, // text-white
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // px-6 py-3
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // rounded-lg
                ),
                elevation: 0,
              ),
              child: AnimatedScale(
                scale: 1.0,
                duration: const Duration(milliseconds: 100),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16, // text-xl
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(57);
}