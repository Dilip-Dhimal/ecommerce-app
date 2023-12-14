


import '../models/meal.dart';

class ApiService{

static Future<List<MealCategory>> getData() async{
  try{
    final response = await dio.get(Api.meal)
  }
}
}