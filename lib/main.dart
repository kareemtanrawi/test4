import 'package:flutter/material.dart';
import 'package:test3/views/screens/auth/login_page.dart';

void main() {
  runApp(const text3());
}

class text3 extends StatelessWidget {
  const text3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
