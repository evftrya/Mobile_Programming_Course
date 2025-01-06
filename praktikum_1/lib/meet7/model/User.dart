import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';

class User {
  String username;
  String token;
  User({required this.username, required this.token});

  Map<String, dynamic> tolson() => {
        'username': username,
        'token': token,
      };
  factory User.FromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      token: json['token'],
    );
  }
}
