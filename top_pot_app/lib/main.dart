import 'package:flutter/material.dart';
import 'package:top_pot_app/presentation/auth/signup_page.dart';

void main() {
  runApp(const TopPotApp());
}

class TopPotApp extends StatelessWidget {
  const TopPotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignupPage(),
    );
  }
}
