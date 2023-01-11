import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/consts.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: defaultBackgroundColor,
      appBar: AppBar(
        title: const Text('Booking Screen'),
      ),
      body: const Center(
        child: Text('Booking Screen'),
      ),
    );
  }
}
