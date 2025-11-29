import 'package:breakfast_app/features/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCard extends StatelessWidget {
  final PopularModel populars;
  const PopularCard({super.key, required this.populars});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 170,
      width: double.infinity,
      child: Container(
        
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              // The shadow in the image is darker and extends downward
              color: Colors.black.withOpacity(
                0.25,
              ), // Adjust opacity for desired darkness
              offset: const Offset(0, 10), // Significantly offset downward
              blurRadius: 15, // Increase blurRadius for a softer, larger spread
              spreadRadius: -5, // Optional: slightly contract the shadow edges
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(populars.iconPath, width: 30, height: 30),
            Column(
              children: [
                Text(populars.title, style: GoogleFonts.manrope()),
                Text(populars.info),
              ],
            ),
      
            SvgPicture.asset('lib/assets/svg/arrow_right.svg'),
          ],
        ),
      ),
    );
  }
}
