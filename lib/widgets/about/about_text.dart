import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naveenfolio/responsive.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    super.key,
    required this.text,
    this.textAlign = TextAlign.center,
    this.lineHeight = 1.5,
    this.color = Colors.black87,
  });

  final String text;
  final TextAlign textAlign;
  final double lineHeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isMobile(context);

    bool isMobTab = isMobile || isTablet;
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontSize: isMobTab ? 20.0 : 22.0,
        fontWeight: FontWeight.w500,
        color: color,
        height: lineHeight,
      ),
    );
  }
}
