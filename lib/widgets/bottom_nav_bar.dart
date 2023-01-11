import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int index;
  final void Function(int index) onChanged;
  const BottomNavBar({super.key, required this.index, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: index,
      buttonBackgroundColor: Colors.green,
      backgroundColor: Colors.transparent,
      color: Colors.green,
      animationDuration: const Duration(milliseconds: 300),
      items: const [
        Icon(
          Icons.home,
        ),
        Icon(
          Icons.book_rounded,
        ),
        Icon(
          Icons.favorite_rounded,
        ),
        Icon(
          Icons.notifications,
        ),
        Icon(
          Icons.settings,
        ),
      ],
      onTap: onChanged,
    );
  }
}
