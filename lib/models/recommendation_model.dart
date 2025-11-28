import 'dart:ui';

class RecommendationModel {
  String name;
  String iconPath;
  String info;
  Color boxColor;
  
  

  RecommendationModel({
    required this.name,
    required this.iconPath,
    required this.info,
    required this.boxColor,
  });

  static List<RecommendationModel> getRecommendations() {
    List<RecommendationModel> recommendations = [];

    recommendations.add(
      RecommendationModel(
        name: 'Honey pancake',
        iconPath: 'lib/assets/honey_pancake.png',
        info:'Easy | 30 min | 350 calories',
        boxColor:  const Color(0xFFFCE7F3),
      ),
    );

    recommendations.add(
      RecommendationModel(
        name: 'French toast ',
        iconPath: 'lib/assets/french_toast.png',
        info:'Easy | 30 min | 220 calories',
        boxColor: const Color(0xFFF3E8FF),
      ),
    );

   

    

    

    return recommendations;
  }
}
