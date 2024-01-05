// import 'package:dio/dio.dart';
// import '../constants/api.dart';
// import '../models/meal.dart';
//
// class ApiService {
//   // Create a static instance of Dio, which is a popular HTTP client for Dart.
//
//   static final dio = Dio();
//
//   // Define a static method named getData that returns a Future<List<MealCategory>>.
//
//   static Future<List<MealCategory>> getData() async {
//     try {
//       // Use Dio to make an HTTP GET request to the meal category API endpoint.
//
//       final response = await dio.get(Api.mealCategory);
//       // Extract the 'categories' field from the response data and convert it to a List.
//
//       return (response.data['categories'] as List)
//           .map((e) => MealCategory.fromJson(e))
//           .toList();
//     } on DioException catch (err) {
//       // Catch DioException (DioError is a subtype of DioException).
//       // If an error occurs during the HTTP request, throw an error message.
//
//       throw '${err.response}';
//     }
//   }
//
//   static Future<List<MealItem>> mealItem({required String meal}) async {
//     try {
//       final response = await dio.get('${Api.getCategory}$meal');
//       return (response.data['meals'] as List)
//           .map((e) => MealItem.fromJson(e))
//           .toList();
//     } on DioException catch (err) {
//       throw '${err.response}';
//     }
//   }
//
//   static Future<Recipe> getRecipe({required String id}) async{
//     try{
//       final response = await dio.get('${Api.getRecipe}$id');
//       return Recipe.fromJson(response.data['meals'][0]);
//
//     }on DioException catch (err){
//       throw '${err.response}';
//     }
//   }
// }
