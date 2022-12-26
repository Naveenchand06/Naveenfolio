import 'package:flutter/material.dart';
import 'package:naveenfolio/sections/about_section.dart';
import 'package:naveenfolio/sections/hero_section.dart';
import 'package:naveenfolio/sections/programming_section.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            AboutSection(),
            ProgrammingSection(),
          ],
        ),
      ),
    );
  }
}
