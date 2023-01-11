import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hotels_hipo/common/consts.dart';
import 'package:hotels_hipo/models/user.dart';

class UserProvider extends ChangeNotifier {
  final List<User> _users = [];

  List<User> get users => _users;
}
