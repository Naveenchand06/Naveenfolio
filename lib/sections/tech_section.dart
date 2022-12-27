import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naveenfolio/responsive.dart';
import 'package:naveenfolio/widgets/tech_stack/tech_card.dart';

class TechSection extends StatelessWidget {
  const TechSection({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;

    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isMobile(context);

    bool isMobTab = isMobile || isTablet;

    return Column(
      children: [
        Text(
          'Tech Stacks',
          style: GoogleFonts.poppins(
            fontSize: isMobile ? 40.0 : 46.0,
            fontWeight: FontWeight.w600,
            color: const Color(0xff2b2d42),
            height: 1.5,
          ),
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: sw * 6 / 100),
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 50.0,
            spacing: 50.0,
            children: const [
              TechCard(
                title: 'Dart',
                imgPath: '',
              ),
              TechCard(
                title: 'JavaScript',
                imgPath: '',
              ),
              TechCard(
                title: 'Python',
                imgPath: '',
              ),
              TechCard(
                title: 'Swift',
                imgPath: '',
              ),
              TechCard(
                title: 'PHP',
                imgPath: '',
              ),
              TechCard(
                title: 'Flutter',
                imgPath: '',
              ),
              TechCard(
                title: 'Firebase',
                imgPath: '',
              ),
              TechCard(
                title: 'Flask',
                imgPath: '',
              ),
              TechCard(
                title: 'Shell Script',
                imgPath: '',
              ),
              TechCard(
                title: 'MongoDB',
                imgPath: '',
              ),
              TechCard(
                title: 'MySQL',
                imgPath: '',
              ),
              TechCard(
                title: 'Redis',
                imgPath: '',
              ),
              TechCard(
                title: 'Docker',
                imgPath: '',
              ),
            ],
          ),
        ),
        const SizedBox(height: 50.0),
      ],
    );
  }
}
