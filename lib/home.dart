import 'package:breakfast_app/Widgets/category_card.dart';
import 'package:breakfast_app/Widgets/recommendation_diet_widget.dart';
import 'package:breakfast_app/models/category_model.dart';
import 'package:breakfast_app/models/recommendation_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // 1. State variable to hold the list of categories
  List<CategoryModel> categories = [];

  // Function to fetch the data
  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  List<RecommendationModel> recommendations = [];
  void _getRecommendations() {
    recommendations = RecommendationModel.getRecommendations();
  }

  @override
  void initState() {
    // 2. Initialize the data when the widget is created
    _getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Column(
        children: [
          SearchField(),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Categories',
                  style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              // --  Call the function to build the horizontal list --
              _horizontalCategoryList(),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Recommendation \n for Diet ',
                  style: GoogleFonts.manrope(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              _horizontalRecommendationDietList(),
            ],
          ),
        ],
      ),
    );
  }

  // -- Horizontal Category List --
  Widget _horizontalCategoryList() {
    return SizedBox(
      height: 130, // REQUIRED: Horizontal ListView must have a defined height
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // This makes it scroll horizontally
        itemCount: categories.length,
        itemBuilder: (context, index) {
          // Pass the single category object to the CategoryCard
          return CategoryCard(category: categories[index]);
        },
        // We only need padding on the outside edge now
        padding: const EdgeInsets.symmetric(horizontal: 12.5),
      ),
    );
  }

  // -- Horizontal Recommendation Diet List --
  Widget _horizontalRecommendationDietList() {
    return SizedBox(
      height: 200, // REQUIRED: Horizontal ListView must have a defined height
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // This makes it scroll horizontally
        itemCount: recommendations.length,
        itemBuilder: (context, index) {
          // Pass the single category object to the CategoryCard
          return RecommendationDietCard(recommendation: recommendations[index]);
        },
        // We only need padding on the outside edge now
        padding: const EdgeInsets.symmetric(horizontal: 12.5),
      ),
    );
  }

  // -- SearchField --
  Container SearchField() {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        // The search bar itself is white
        borderRadius: BorderRadius.circular(
          30,
        ), // Highly rounded corners (adjust as needed)
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
      child: TextField(
        cursorColor: Color(0xFF6a7282),
        decoration: InputDecoration(
          hintText: "Search pancake...",
          hintStyle: GoogleFonts.manrope(
            textStyle: const TextStyle(fontSize: 14, color: Color(0xFF6a7282)),
          ),

          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),

          filled: true,
          fillColor: Colors.white,

          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              'lib/assets/svg/search.svg',
              color: Color(0xFF6a7282),
              height: 20,
              width: 20,
            ),
          ),
          suffixIcon: SizedBox(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    color: Color(0xFF6a7282),
                    thickness: 0.1,
                    endIndent: 10,
                    indent: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      color: Color(0xFF6a7282),
                      'lib/assets/svg/funnel.svg',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // -- Appbar function --
  AppBar appBar() {
    return AppBar(
      title: Text(
        'Breakfast',
        style: GoogleFonts.manrope(
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFFF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(
          'lib/assets/svg/arrow.svg',
          height: 30,
          width: 30,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            /* Handle tap */
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'lib/assets/svg/dots.svg',
              height: 30,
              width: 30,
            ),
          ),
        ),
      ],
    );
  }
}
