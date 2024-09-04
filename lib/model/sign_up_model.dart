import 'package:flutter/material.dart';

class SignUpModel extends ChangeNotifier {
  late String name;
  late String email;
  late int phoneNumber;
  late String password;

  nameNotifier() {
    name;
    notifyListeners();
  }

  emailNotifier() {
    email;
    notifyListeners();
  }

  phone() {
    phoneNumber;
    notifyListeners();
  }

  passwordNotifier() {
    password;
    notifyListeners();
  }
}
