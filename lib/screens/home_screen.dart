import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/consts.dart';
import 'package:hotels_hipo/common/methods.dart';
import 'package:hotels_hipo/models/user.dart';
import 'package:hotels_hipo/widgets/item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: AppBar(
        title: const Text('GitHub Users'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FutureBuilder<List<User>>(
          future: getAllUsers(),
          builder: (context, AsyncSnapshot<List<User>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  final user = snapshot.data![index];
                  return ItemWidget(user: user);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10.0,
                ),
                itemCount: snapshot.data!.length,
              );
            }
            return const Center(
              child: Text('No users found!'),
            );
          },
        ),
      ),
    );
  }
}
