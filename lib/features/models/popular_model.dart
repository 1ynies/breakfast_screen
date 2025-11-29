

class PopularModel {
  String title;
  String iconPath;
  String info;

  PopularModel({
    required this.title,
    required this.iconPath,
    required this.info,
  });

  static List<PopularModel> getpopular() {
    List<PopularModel> populars = [];

    populars.add(
      PopularModel(
        title: 'Tacos',
        iconPath: 'lib/assets/tacos.png',
        info: 'Medium |30 min | 170 calories',
      ),
    );
    populars.add(
      PopularModel(
        title: 'Blueberry pancakes',
        iconPath: 'lib/assets/blueberry_pancake.png',
        info: 'Easy |20 min | 350 calories',
      ),
    );
    return populars;
  }
}
