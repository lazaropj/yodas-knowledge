
import 'package:dio/dio.dart';
import 'package:yodas_knowledge/models/category.model.dart';
import 'package:yodas_knowledge/shared/custom_dio/custom_dio.dart';

class CategoryService{

  static var _dio = new CustomDio();

  static Future<List<CategoryModel>> getCategory() async {
    List<CategoryModel> categorys = new List();
      try {
        var response = await _dio.get("/");
        response.data.forEach((key, value) {
          categorys.add(CategoryModel(title: key, image: value));
        });
      } on DioError catch (error) {
        throw (error);
      }
      return categorys;
  }
}
