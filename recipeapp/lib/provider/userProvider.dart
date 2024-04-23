import 'package:flutter/material.dart';
import '/model/Users.dart';

class userProvider extends ChangeNotifier {
  User user = User();

  // User get user => _user;

  void setUser(User newUser) {
    user = newUser;
    notifyListeners();
  }
}
