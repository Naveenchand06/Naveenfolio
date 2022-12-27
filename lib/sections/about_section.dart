import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naveenfolio/constants.dart';
import 'package:naveenfolio/widgets/about/about_text.dart';
import 'package:naveenfolio/widgets/hero/hero_img.dart';
import 'package:naveenfolio/widgets/hero/hero_intro.dart';
import 'package:naveenfolio/responsive.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isMobile(context);

    bool isMobTab = isMobile || isTablet;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'About',
          style: GoogleFonts.poppins(
            fontSize: isMobile ? 40.0 : 46.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xff2b2d42),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 30.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: sw * 8 / 100),
          child: Column(
            children: const [
              AboutText(text: aboutBio1),
              SizedBox(height: 40.0),
              AboutText(text: aboutBio2),
              SizedBox(height: 40.0),
              AboutText(text: aboutBio3),
              SizedBox(height: 40.0),
              AboutText(text: aboutBio4),
              SizedBox(height: 40.0),
            ],
          ),
        ),
        const SizedBox(height: 50.0)
      ],
    );
  }
}
