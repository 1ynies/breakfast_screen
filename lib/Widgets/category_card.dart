import 'package:breakfast_app/models/category_model.dart';
import 'package:flutter/material.dart';

// --- Custom Widget for Each Item ---
class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,

      // Set the width for horizontal scrolling items
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: category.boxColor,
        ),

        margin: const EdgeInsets.symmetric(horizontal: 7.5),
        child: InkWell(
          onTap: () {
            // -- to be implemented later ---
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(category.iconPath, width: 60, height: 60),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  category.title,
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
