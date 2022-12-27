import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TechCard extends StatelessWidget {
  const TechCard({
    super.key,
    required this.title,
    required this.imgPath,
  });

  final String title;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(3, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipOval(
            child: Container(
              height: 150 * 60 / 100,
              width: 150 * 90 / 100,
              color: Colors.blue.shade200,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
