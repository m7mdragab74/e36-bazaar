import 'package:e36_bazzar/views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const E36Bazaar());
}

class E36Bazaar extends StatelessWidget {
  const E36Bazaar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
