import 'package:flutter/material.dart';
import 'package:naveenfolio/widgets/hero/hero_img.dart';
import 'package:naveenfolio/widgets/hero/hero_intro.dart';
import 'package:naveenfolio/responsive.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    // bool isMobile = Responsive.isMobile(context);
    // bool isTablet = Responsive.isMobile(context);

    return SizedBox(
      width: sw,
      height: sh,
      child: Responsive(
        mobile: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              HeroInro(),
              SizedBox(height: 20.0),
              HeroImage(),
            ],
          ),
        ),
        desktop: SizedBox(
          // padding: const EdgeInsets.all(20.0),
          width: sw * 80 / 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 50.0),
                child: const HeroInro(),
              ),
              const SizedBox(height: 20.0),
              const HeroImage(),
            ],
          ),
        ),
      ),
    );
  }
}
