import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/consts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: AppBar(
        title: const Text('Notification Screen'),
      ),
      body: const Center(
        child: Text('Notification Screen'),
      ),
    );
  }
}
