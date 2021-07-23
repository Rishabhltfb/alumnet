import 'package:flutter/material.dart';
import 'package:alumnet/src/models/user_model.dart';

class UserProvider extends ChangeNotifier {
  User _user = User();

  User get getUser {
    return _user;
  }

  set setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
