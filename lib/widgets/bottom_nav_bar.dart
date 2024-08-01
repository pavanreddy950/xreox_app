import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.orange),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.upload_file, color: Colors.orange),
          label: 'Upload',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.orange),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.orange),
          label: 'Settings',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor:  Colors.orange, // Change this color as needed
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white, // You can change this color as needed
      onTap: onItemTapped,
    );
  }
}
