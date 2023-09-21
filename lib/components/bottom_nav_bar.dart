import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.yellow),
        tabBackgroundColor: Colors.yellow.shade900,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            iconColor: Colors.white,
            text: 'Popular',
            textColor: Colors.white,
          ),
          GButton(
            icon: Icons.favorite,
            iconColor: Colors.white,
            text: 'Favorite character',
            textColor: Colors.white,
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            iconColor: Colors.white,
            text: 'character',
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
