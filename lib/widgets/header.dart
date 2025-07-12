import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
Widget build(BuildContext context) {
  return SafeArea( // <--- wrap with SafeArea
    bottom: false, // you can disable bottom padding if it's not needed
    child: Container(
      width: double.infinity, // instead of fixed width
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
          // Burger Menu Button
          Positioned(
            right: 16,
            top: 0,
            bottom: 0,
            child: Transform(
              transform: Matrix4.diagonal3Values(-1, 1, 1),
              alignment: Alignment.center,
              child: PopupMenuButton<String>(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 25,
                ),
                onSelected: (String value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Selected: $value')),
                  );
                },
                itemBuilder: (BuildContext context) => const [
                  PopupMenuItem<String>(
                    value: 'Home',
                    child: Text('Home'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Settings',
                    child: Text('Settings'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Logout',
                    child: Text('Logout'),
                  ),
                ],
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