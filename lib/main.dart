import 'package:flutter/material.dart';
import 'package:palindrome_count_app/palindrome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Palindrome(),
    );
  }
}
