import 'package:flutter/material.dart';

class E36Model extends ChangeNotifier {
  String name = '';
  String email = '';
  String phoneNumber = '0';
  String password = '';
  String image = '';
  int counter = 0;
  nameNotifier() {
    notifyListeners();
  }

  emailNotifier() {
    notifyListeners();
  }

  phone() {
    notifyListeners();
  }

  passwordNotifier() {
    notifyListeners();
  }

  imageNotifier() {
    notifyListeners();
  }

  inc() {
    counter++;
    notifyListeners();
  }

  dec() {
    counter--;
    notifyListeners();
  }
}
