import 'package:flutter/material.dart';

import 'views/sign_up.dart';

void main() {
  runApp(const E36Bazaar());
}

class E36Bazaar extends StatelessWidget {
  const E36Bazaar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
