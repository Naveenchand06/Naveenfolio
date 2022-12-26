import 'package:flutter/material.dart';
import 'package:naveenfolio/responsive.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    double sw = MediaQuery.of(context).size.width;
    double sh = MediaQuery.of(context).size.height;
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isMobile(context);

    return Flexible(
      child: Image.asset(
        'assets/images/dev-img.png',
        fit: BoxFit.cover,
        height: isMobile
            ? sh * 60 / 100
            : isTablet
                ? sh * 80 / 100
                : sh * 70 / 100,
        width: isMobile
            ? sw * 80 / 100
            : isTablet
                ? sw * 80 / 100
                : sw * 60 / 100,
      ),
    );
  }
}
