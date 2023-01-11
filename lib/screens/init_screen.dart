import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/consts.dart';
import 'package:hotels_hipo/providers/public_provider.dart';
import 'package:hotels_hipo/screens/booking_screen.dart';
import 'package:hotels_hipo/screens/home_screen.dart';
import 'package:hotels_hipo/screens/notification_screen.dart';
import 'package:hotels_hipo/screens/saved_screen.dart';
import 'package:hotels_hipo/screens/settings_screen.dart';
import 'package:hotels_hipo/widgets/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

class InitScreen extends StatefulWidget {
  static const routeName = 'INIT';
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  static const pages = [
    HomeScreen(),
    BookingScreen(),
    SavedScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final publicProvider = Provider.of<PublicProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      bottomNavigationBar: BottomNavBar(
        index: publicProvider.currentPageIndex,
        onChanged: (index) => publicProvider.setCurrentPageIndex(index),
      ),
      body: Consumer<PublicProvider>(
        builder: (context, data, _) => pages[data.currentPageIndex],
      ),
    );
  }
}
