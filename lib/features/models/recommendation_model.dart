import 'dart:ui';

class RecommendationModel {
  String name;
  String iconPath;
  String info;
  Color boxColor;
  Color buttonColor;

  RecommendationModel({
    required this.name,
    required this.iconPath,
    required this.info,
    required this.boxColor,
    required this.buttonColor,
  });

  static List<RecommendationModel> getRecommendations() {
    List<RecommendationModel> recommendations = [];
    Color Pink = Color(0xFFFDA5D5);
    Color Purple = Color(0xFFC4B4FF);

    recommendations.add(
      RecommendationModel(
        name: 'Honey pancake',
        iconPath: 'lib/assets/honey_pancake.png',
        info: 'Easy | 30 min | 350 calories',
        buttonColor: Pink,
        boxColor: const Color(0xFFFCE7F3).withOpacity(0.8),
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'French toast ',
        iconPath: 'lib/assets/french_toast.png',
        info: 'Easy | 30 min | 220 calories',
        buttonColor: Purple,
        boxColor: const Color(0xFFF3E8FF).withOpacity(0.8),
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'Black coffee',
        iconPath: 'lib/assets/coffe.png',
        info: 'Easy | 30 min | 220 calories',
        buttonColor: Purple,
        boxColor: const Color(0xFFF3E8FF).withOpacity(0.8),
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'Greek yogurt',
        iconPath: 'lib/assets/plain_yogurt.png',
        info: 'Easy | 30 min | 220 calories',
        buttonColor: Pink,
        boxColor: const Color(0xFFF3E8FF).withOpacity(0.8),
      ),
    );
     recommendations.add(
      RecommendationModel(
        name: 'Milk',
        iconPath: 'lib/assets/glass_of_milk.png',
        info: 'Easy | 30 min | 220 calories',
        buttonColor: Purple,
        boxColor: const Color(0xFFF3E8FF).withOpacity(0.8),
      ),
    );

    return recommendations;
  }
}
