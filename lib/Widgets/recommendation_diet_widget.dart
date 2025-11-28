import 'package:breakfast_app/models/recommendation_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// --- Custom Widget for Each Item ---
class RecommendationDietCard extends StatelessWidget {
  final RecommendationModel recommendation;

  const RecommendationDietCard({super.key, required this.recommendation});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,

      // Set the width for horizontal scrolling items
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: recommendation.boxColor,
        ),

        margin: const EdgeInsets.symmetric(horizontal: 7.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(recommendation.iconPath, width: 100, height: 100),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                recommendation.name,
                textAlign: TextAlign.center,

                style: const TextStyle(fontSize: 13),
                maxLines: 1,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                recommendation.info,
                textAlign: TextAlign.center,
                style: GoogleFonts.manrope(
                  color: Color(0xFF99A1AF),
                  fontSize: 12,
                ),

                maxLines: 1,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: InkWell(
                onTap: () {
                  // -- to be implemented later ---
                },
                child: SizedBox(
                  width: 100, // <-- Set your desired width here
                  height: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),

                    height: 10,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: recommendation.buttonColor ?? Colors.white,
                    ),

                    child: Text(
                      textAlign: TextAlign.center,
                      'View',
                      style: GoogleFonts.manrope(
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
