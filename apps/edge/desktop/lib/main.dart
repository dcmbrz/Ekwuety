// Ekwuety desktop app entry point
import 'package:flutter/material.dart';

void main() {
  runApp(const EkwuetyDesktopApp());
}

class EkwuetyDesktopApp extends StatelessWidget {
  const EkwuetyDesktopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ekwuety Desktop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const Placeholder(),
    );
  }
}