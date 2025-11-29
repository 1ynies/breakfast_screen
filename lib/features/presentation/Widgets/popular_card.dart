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
      height: 140,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(left: 15 ,right: 15,bottom: 18),
        padding: EdgeInsets.all(10),
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
          children: <Widget>[
            Image.asset(populars.iconPath, width: 60, height: 60),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    populars.title,
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Text(
                    populars.info,
                    style: GoogleFonts.manrope(
                      textStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),

            SvgPicture.asset('lib/assets/svg/arrow_right.svg'),
          ],
        ),
      ),
    );
  }
}
