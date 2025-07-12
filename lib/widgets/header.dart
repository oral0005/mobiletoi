import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
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
            top: 19,
            child: Row(
              children: [
                // Logo
                Image.asset(
                  'assets/ToiBastar_logo.png',
                  width: 105,
                  height: 18,
                ),
                const SizedBox(width: 7), // Spacing between logo and text
              ],
            ),
          ),
          // Burger Menu Button
          Positioned(
            right: 16, // Adjusted for alignment
            top: 13,
            child: Transform(
              transform: Matrix4.diagonal3Values(-1, 1, 1), // Mirrors horizontally
              alignment: Alignment.center,
              child: PopupMenuButton<String>(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 20,
                ),
                onSelected: (String value) {
                  // Handle menu item selection
                  switch (value) {
                    case 'Home':
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Navigating to Home')),
                      );
                      break;
                    case 'Settings':
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Opening Settings')),
                      );
                      break;
                    case 'Logout':
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Logging out')),
                      );
                      break;
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Home',
                    child: Text('Home'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Settings',
                    child: Text('Settings'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Logout',
                    child: Text('Logout'),
                  ),
                ],
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