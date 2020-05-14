import 'package:scoped_model/scoped_model.dart';

class CategoryModel extends Model  {
  String _title;
  String _image;

  CategoryModel(
      {String title,
        String image}) {
    this._title = title;
    this._image = image;
    notifyListeners();
  }

  String get title => _title;
  set title(String title) => _title = title;
  String get image => _image;
  set image(String image) => _image = image;

  CategoryModel.fromJson(Map<String, dynamic> json) {
    _title = json['title'];
    _image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this._title;
    data['image'] = this._image;
    return data;
  }
}
