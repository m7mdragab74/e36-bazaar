import 'package:flutter/material.dart';

class E36Model extends ChangeNotifier {
  late String name;
  late String email;
  late int phoneNumber;
  late String password;
  late String image;
  int counter = 0;
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

  imageNotifier() {
    image;
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
