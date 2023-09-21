class Character {
  String name;
  String detail;
  String imagePath;
  String gang;

  Character({
    required this.name,
    required this.detail,
    required this.imagePath,
    required this.gang,
  });

  String get _name => name;
  String get _detail => detail;
  String get _imagePath => imagePath;
  String get _gang => gang;
}