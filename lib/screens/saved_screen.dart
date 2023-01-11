import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/consts.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: AppBar(
        title: const Text('Saved Screen'),
      ),
      body: const Center(
        child: Text('Saved Screen'),
      ),
    );
  }
}
