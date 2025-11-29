import 'dart:ui'; // Used for Color

class CategoryModel {
  String title;
  String iconPath;
  Color boxColor;
  
  CategoryModel({
    required this.title,
    required this.iconPath,
    required this.boxColor,
  });

  // Static method to provide the list of categories
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        title: 'Cake',
        iconPath: 'lib/assets/cake.png',
       boxColor: const Color(0xCCFCE7F3),
      ),
    );
    categories.add(
      CategoryModel(
        title: 'Salade',
        iconPath: 'lib/assets/salade.png',
        boxColor: const Color(0xCCF3E8FF),
      ),
    );
    categories.add(
      CategoryModel(
        title: 'Pie',
        iconPath: 'lib/assets/pie.png',
        boxColor: const Color(0xCCFCE7F3),
        
      ),
    );
    categories.add(
      CategoryModel(
        title: 'Smoothies',
        iconPath: 'lib/assets/smoothy.png',
        boxColor: const Color(0xCCF3E8FF),
      ),
    );
    
    return categories;
  }
}