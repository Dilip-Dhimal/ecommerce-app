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
