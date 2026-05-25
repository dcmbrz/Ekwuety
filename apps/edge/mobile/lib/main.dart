// Ekwuety mobile app entry point
import 'package:flutter/material.dart';

void main() {
  runApp(const EkwuetyApp());
}

class EkwuetyApp extends StatelessWidget {
  const EkwuetyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ekwuety',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const Placeholder(),
    );
  }
}