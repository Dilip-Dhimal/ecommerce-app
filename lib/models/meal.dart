//
// class Bank {
//   final String name;
//   final int open;
//
//   Bank({required this.name, required this.open});
//
//
//   factory Bank.formJson(Map<String, dynamic> json){
//     return Bank(name: json['name'], open: json['open']);
//   }
//
// }
//
// final List banks = [
//   {
//     'name' : "GBIME",
//     'open' : 2022
//   },
//   {
//     'name' : "NIBL",
//     'open' : 2023,
//   },
//
// ];
//
// final bankInstances = banks.map((e) => Bank.formJson(e)).toList();

class MealCategory {
  final String idCategory;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;

  MealCategory({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });

  factory MealCategory.fromJson(Map<String, dynamic> json) {
    return MealCategory(
      idCategory: json['idCategory'],
      strCategory: json['strCategory'],
      strCategoryThumb: json['strCategoryThumb'],
      strCategoryDescription: json['strCategoryDescription'],
    );
  }
}

class MealItem {
  final String strMeal;
  final String strMealThumb;
  final String idMeal;

  MealItem(
      {required this.strMeal,
      required this.strMealThumb,
      required this.idMeal});

  factory MealItem.fromJson(Map<String, dynamic> json) {
    return MealItem(
      strMeal: json['strMeal'],
      strMealThumb: json['strMealThumb'],
      idMeal: json['idMeal'],
    );
  }
}

class Recipe {
  final String strMeal;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String strTags;
  final String strYoutube;

  Recipe(
      {required this.strMeal,
      required this.strCategory,
      required this.strArea,
      required this.strInstructions,
      required this.strMealThumb,
      required this.strTags,
      required this.strYoutube});

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
        strMeal: json['strMeal'],
        strCategory: json['strCategory'],
        strArea: json['strArea'],
        strInstructions: json['strInstructions'],
        strMealThumb: json['strMealThumb'],
        strTags: json['strTags'],
        strYoutube: json['strYoutube']);
  }
}
