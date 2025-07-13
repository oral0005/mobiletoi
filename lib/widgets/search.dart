import 'package:flutter/material.dart';
import 'package:mobiletoi/settings.dart';

class SearchSection extends StatefulWidget {
  final List<String> cities;

  const SearchSection({super.key, required this.cities});

  @override
  _SearchSectionState createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  bool _isOpen = false;
  String _selectedCity = "Выберите город";

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
      constraints: const BoxConstraints(maxWidth: 384),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xE6FFFFFF),
        borderRadius: BorderRadius.circular(12),
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
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xE6FFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppSettings.primaryColor,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    _selectedCity,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xFF374151),
                      fontSize: 20,
                    ),
                  ),
                ),
                const Positioned(
                  left: 16,
                  child: Icon(
                    Icons.location_on,
                    color: Color(0xFF6B7280),
                    size: 20,
                  ),
                ),
                Positioned(
                  right: 16,
                  child: AnimatedRotation(
                    turns: _isOpen ? 0.5 : 0.0,
                    duration: const Duration(seconds: 2),
                    child: const Icon(
                      Icons.arrow_drop_down,
                      color: Color(0xFF6B7280),
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            height: _isOpen ? 240 : 0,
            margin: const EdgeInsets.only(top: 4),
            decoration: BoxDecoration(
              color: const Color(0xE6FFFFFF),
              borderRadius: BorderRadius.circular(10),
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
                    itemCount: widget.cities.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => _handleSelectCity(widget.cities[index]),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            widget.cities[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xFF374151),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : null,
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: AppSettings.elevatedButtonStyle,
              child: const AnimatedScale(
                scale: 1.0,
                duration: Duration(milliseconds: 100),
                child: Text(
                  "Искать",
                  style: TextStyle(
                    fontSize: 20,
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