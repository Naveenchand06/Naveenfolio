import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naveenfolio/responsive.dart';

class ProgrammingSection extends StatelessWidget {
  const ProgrammingSection({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;

    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isMobile(context);

    bool isMobTab = isMobile || isTablet;

    return Column(
      children: [
        Text(
          'Programming Languages',
          style: GoogleFonts.poppins(
            fontSize: isMobile ? 40.0 : 46.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xff2b2d42),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 20.0),
        Wrap(
          children: [],
        )
      ],
    );
  }
}
