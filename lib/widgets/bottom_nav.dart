import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    String _currentPage = '';
    void tapBottomNav(int index) {
    }

    return BottomNavigationBar(
      backgroundColor: const Color(0xFF666666),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[500],
      currentIndex: 1, //_currentIndex,
      onTap: (int index) => tapBottomNav(index),

      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lock),
          label: 'Locks',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}