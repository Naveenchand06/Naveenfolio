import 'package:flutter/material.dart';
import 'package:naveenfolio/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Naveenchand',
      color: Colors.indigo.shade900,
      home: const Home(),
    );
  }
}
