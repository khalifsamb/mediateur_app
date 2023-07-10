import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mediature/pages/Form.dart';
import 'package:mediature/pages/accueil.dart';
import 'package:mediature/pages/postList.dart';
import 'package:mediature/pages/reglage.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Accueil(),
    FormPage(),
    PostList(),
    Reglage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          padding: EdgeInsets.all(16),
          backgroundColor: Colors.grey,
          color: Colors.white,
          activeColor: Color(0xFF006400),
          tabBackgroundColor: Colors.white,
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.home_filled,
              text: 'Accueil',
            ),
            GButton(
              icon: Icons.search,
              text: 'Recherche',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Favoris',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Réglages',
            ),
          ],
          selectedIndex: _currentIndex,
          onTabChange: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
