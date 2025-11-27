import 'dart:ui';

class CategoryModel {
  String title;
  String iconPath;
  Color boxColor;
  CategoryModel({
    required this.title,
    required this.iconPath,
    required this.boxColor,
  });

  List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(
      CategoryModel(
        title: 'Salade',
        iconPath: 'lib/assets/salade.png',
        boxColor: boxColor,
      ),
    );
    return categories;
  }
}
