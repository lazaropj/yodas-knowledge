
import 'package:dio/dio.dart';
import 'package:yodas_knowledge/models/category.model.dart';
import 'package:yodas_knowledge/shared/constants.dart';
import 'package:yodas_knowledge/shared/custom_dio/custom_dio.dart';

class CategoryService{

  static var _dio = new CustomDio(BASE_URL);

  static Future<List<CategoryModel>> getCategory() async {
    List<CategoryModel> categorys = new List();
      try {
        var response = await _dio.get("/");
        response.data.forEach((key, value) {
          String imagePath;
          if (key == "films") {
            imagePath = "assets/images/films.jpg";
          }
          if (key == "people") {
            imagePath = "assets/images/character.jpg";
          }
          if (key == "planets") {
            imagePath = "assets/images/planets.jpg";
          }
          if (key == "species") {
            imagePath = "assets/images/species.jpg";
          }
          if (key == "starships") {
            imagePath = "assets/images/starships.jpg";
          }
          if (key == "vehicles") {
            imagePath = "assets/images/vehicles.jpg";
          }
          categorys.add(CategoryModel(title: key, image: imagePath));
        });
      } on DioError catch (error) {
        throw (error);
      }
      return categorys;
  }
}
