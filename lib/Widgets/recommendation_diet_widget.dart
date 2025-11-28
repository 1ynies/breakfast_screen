import 'package:breakfast_app/models/category_model.dart';
import 'package:breakfast_app/models/recommendation_model.dart';
import 'package:flutter/material.dart';

// --- Custom Widget for Each Item ---
class RecommendationDietCard extends StatelessWidget {
  final RecommendationModel recommendation  ;

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
        child: InkWell(
          onTap: () {
            // -- to be implemented later ---
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(recommendation.iconPath, width: 80, height: 80),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  recommendation.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    
                    fontSize: 13,
                  ),
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
