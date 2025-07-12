import 'package:flutter/material.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  _SearchSectionState createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  bool _isOpen = false;
  String _selectedCity = "Выберите город";

  final List<String> _cities = [
    "Астана", "Алматы", "Шымкент", "Караганда", "Актобе", "Тараз", "Павлодар", "Усть-Каменогорск",
    "Семей", "Кокшетау", "Актау", "Атырау", "Костанай", "Петропавловск", "Туркестан", "Уральск",
    "Жезказган", "Темиртау", "Рудный", "Экибастуз", "Талдыкорган", "Кызылорда", "Байконур",
    "Сарыагаш", "Степногорск", "Атбасар", "Шалкар", "Аральск"
  ];

  void _toggleDropdown() {
    setState(() {
      _isOpen = !_isOpen;
    });
  }

  void _handleSelectCity(String city) {
    setState(() {
      _selectedCity = city;
      _isOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 384), // max-w-sm equivalent
      padding: const EdgeInsets.all(15), // p-10 equivalent
      decoration: BoxDecoration(
        color: const Color(0xE6FFFFFF), // bg-[#FFA500]/20 equivalent
        borderRadius: BorderRadius.circular(12), // rounded-xl
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: _toggleDropdown,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12), // px-10 py-3
                  decoration: BoxDecoration(
                    color: const Color(0xE6FFFFFF), // bg-white/90
                    borderRadius: BorderRadius.circular(10), // rounded-lg
                    border: Border.all(
                      color: const Color(0xFFFFA500), // text-gray-500 for border
                      width: 1,
                    ),
                  ),
                  child: Text(
                    _selectedCity,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF374151), // text-gray-800
                      fontSize: 20, // text-xl
                    ),
                  ),
                ),
                // Left search icon
                const Positioned(
                  left: 16,
                  child: Icon(
                    Icons.location_on,
                    color: Color(0xFF6B7280), // text-gray-500
                    size: 20, // w-5 h-5
                  ),
                ),
                // Right dropdown arrow
                Positioned(
                  right: 16,
                  child: AnimatedRotation(
                    turns: _isOpen ? 0.5 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFF6B7280), // text-gray-500
                      size: 20, // w-5 h-5
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Dropdown menu
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            height: _isOpen ? 240 : 0, // max-h-60 equivalent
            margin: const EdgeInsets.only(top: 4), // mt-1
            decoration: BoxDecoration(
              color: const Color(0xE6FFFFFF), // bg-white/90
              borderRadius: BorderRadius.circular(10), // rounded-lg
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: _isOpen
                ? ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: _cities.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => _handleSelectCity(_cities[index]),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // px-4 py-2
                          child: Text(
                            _cities[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20, // text-xl
                              color: Color(0xFF374151), // text-gray-800
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : null,
          ),
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
                child: const Text(
                  "Искать",
                  style: TextStyle(
                    fontSize: 20, // text-xl
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}