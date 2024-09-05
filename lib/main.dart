import 'package:e36_bazzar/model/e36_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/sign_up.dart';

void main() {
  runApp(const E36Bazaar());
}

class E36Bazaar extends StatelessWidget {
  const E36Bazaar({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => E36Model(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignUpPage(),
      ),
    );
  }
}
