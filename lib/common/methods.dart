import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/consts.dart';
import 'package:hotels_hipo/models/user.dart';
import 'package:url_launcher/url_launcher.dart';

Future<List<User>> getAllUsers() async {
  final List<User> users = [];
  try {
    final response = await Dio().get('$baseUrl/users');
    if (response.statusCode == 200) {
      List data = response.data;
      users.addAll(data.map((user) => User.fromJson(user)));
    }
  } on Exception catch (e) {
    debugPrint(e.toString());
  }
  return users;
}

Image image(
  String asset, {
  double? width,
  double? height,
}) =>
    Image.asset(
      'assets/images/$asset.png',
      height: height,
      width: width,
    );

Future<void> launchInBrowser(String url) async {
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.externalApplication,
  )) {
    debugPrint('Cannot launch url');
  }
}
