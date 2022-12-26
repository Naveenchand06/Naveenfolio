import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naveenfolio/constants.dart';
import 'package:naveenfolio/responsive.dart';

class HeroInro extends StatelessWidget {
  const HeroInro({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isMobile(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          'Naveenchand',
          textAlign: isMobile || isTablet ? TextAlign.center : TextAlign.start,
          style: GoogleFonts.poppins(
            fontSize: isMobile
                ? 50.0
                : isTablet
                    ? 52.0
                    : 56.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xff14213d),
            height: 2.0,
          ),
        ),
        Text(
          "Developer & Upcoming DevOps Engineer",
          textAlign: isMobile || isTablet ? TextAlign.center : TextAlign.start,
          style: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 143, 142, 142),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 20.0),
        SizedBox(
          width: isMobile
              ? sw * 80 / 100
              : isTablet
                  ? sw * 80 / 100
                  : sw * 40 / 100,
          child: Text(
            smallBio,
            textAlign:
                isMobile || isTablet ? TextAlign.center : TextAlign.start,
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 161, 161, 161),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
