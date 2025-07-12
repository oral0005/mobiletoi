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
            // Custom Burger Icon for Sidebar
            Positioned(
              right: 21,
              top: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Image.asset(
                  'assets/burger.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(57);
}

// Drawer widget for sidebar navigation
class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white, // Set Drawer background to white
      child: SafeArea(
        child: Container(
          color: Colors.white, // Keep Container color white for consistency
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _buildMenuItem(context, 'Главная', 'Home'),
              _buildMenuItem(context, 'Банкетные залы', 'BanquetHalls'),
              _buildMenuItem(context, 'О нас', 'About'),
              _buildMenuItem(context, 'Контакты', 'Contacts'),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Selected: AddOrganization')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFA500),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Добавить организацию',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, String value) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected: $value')),
        );
        Navigator.pop(context); // Close the drawer
      },
    );
  }
}