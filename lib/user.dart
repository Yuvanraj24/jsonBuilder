import 'dart:convert';

import 'package:dodo_demo_app/json_sample.dart';

class User {
  final String userName;
  final String email;
  final String dp;

  User({required this.userName, required this.email, required this.dp});

  static User fromJson(json) =>
      User(
        userName: json["userName"], 
        email: json["email"], 
        dp: json["dp"]);
}
