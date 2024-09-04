class MacrosEntity {
  int calories;
  int proteins;
  int fat;
  int carbs;

  MacrosEntity({
    required this.calories,
    required this.proteins,
    required this.fat,
    required this.carbs,
  });

  Map<String, Object?> toDocument() {
    return {
      'calories': calories,
      'proteins': proteins,
      'fat': fat,
      'carbs': carbs,
    };
  }

  static MacrosEntity fromDocument(Map<String, dynamic> doc) {
    return MacrosEntity(
      calories: int.parse(doc['calories'].toString()),
      proteins: int.parse(doc['proteins'].toString()),
      fat: int.parse(doc['fat'].toString()),
      carbs: int.parse(doc['carbs'].toString()),
    );
  }
}
