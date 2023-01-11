import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/methods.dart';
import 'package:hotels_hipo/screens/init_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 5),
        () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const InitScreen(),
                ),
              ),
            });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: image('logo'),
        ),
      ),
    );
  }
}
