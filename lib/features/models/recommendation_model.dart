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
    Color Pink = const Color(0xCCFDA5D5);
    Color Purple = const Color(0xCCC4B4FF);

    recommendations.add(
      RecommendationModel(
        name: 'Honey pancake',
        iconPath: 'lib/assets/honey_pancake.png',
        info: 'Easy | 30 min | 350 calories',
        buttonColor: Pink,
        boxColor: const Color(0xCCFCE7F3).withOpacity(0.8),
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'French toast ',
        iconPath: 'lib/assets/french_toast.png',
        info: 'Easy | 30 min | 220 calories',
        buttonColor: Purple,
        boxColor: const Color(0xCCF3E8FF).withOpacity(0.8),
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'Black coffee',
        iconPath: 'lib/assets/coffe.png',
        info: 'Easy | 30 min | 220 calories',
        buttonColor: Pink,
        boxColor:const Color(0xCCFCE7F3).withOpacity(0.8),
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'Greek yogurt',
        iconPath: 'lib/assets/plain_yogurt.png',
        info: 'Easy | 30 min | 220 calories',
        buttonColor: Purple,
        boxColor: const Color(0xCCF3E8FF).withOpacity(0.8),
      ),
    );
    recommendations.add(
      RecommendationModel(
        name: 'Milk',
        iconPath: 'lib/assets/glass_of_milk.png',
        info: 'Easy | 30 min | 220 calories',
        buttonColor: Pink,
        boxColor:const Color(0xCCFCE7F3).withOpacity(0.8),
      ),
    );

    return recommendations;
  }
}
