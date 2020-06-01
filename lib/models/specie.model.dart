import 'package:yodas_knowledge/models/generic.model.dart';

class SpecieModel extends GenericModel {
  String _averageHeight;
  String _averageLifespan;
  String _classification;
  String _created;
  String _designation;
  String _edited;
  String _eyeColors;
  String _hairColors;
  String _homeworld;
  String _language;
  String _name;
  List<String> _people;
  List<String> _films;
  String _skinColors;
  String _url;

  SpecieModel(
      {String averageHeight,
        String averageLifespan,
        String classification,
        String created,
        String designation,
        String edited,
        String eyeColors,
        String hairColors,
        String homeworld,
        String language,
        String name,
        List<String> people,
        List<String> films,
        String skinColors,
        String url}) {
    this._averageHeight = averageHeight;
    this._averageLifespan = averageLifespan;
    this._classification = classification;
    this._created = created;
    this._designation = designation;
    this._edited = edited;
    this._eyeColors = eyeColors;
    this._hairColors = hairColors;
    this._homeworld = homeworld;
    this._language = language;
    this._name = name;
    this._people = people;
    this._films = films;
    this._skinColors = skinColors;
    this._url = url;
  }

  String get averageHeight => _averageHeight;
  set averageHeight(String averageHeight) => _averageHeight = averageHeight;
  String get averageLifespan => _averageLifespan;
  set averageLifespan(String averageLifespan) =>
      _averageLifespan = averageLifespan;
  String get classification => _classification;
  set classification(String classification) => _classification = classification;
  String get created => _created;
  set created(String created) => _created = created;
  String get designation => _designation;
  set designation(String designation) => _designation = designation;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  String get eyeColors => _eyeColors;
  set eyeColors(String eyeColors) => _eyeColors = eyeColors;
  String get hairColors => _hairColors;
  set hairColors(String hairColors) => _hairColors = hairColors;
  String get homeworld => _homeworld;
  set homeworld(String homeworld) => _homeworld = homeworld;
  String get language => _language;
  set language(String language) => _language = language;
  String get name => _name;
  set name(String name) => _name = name;
  List<String> get people => _people;
  set people(List<String> people) => _people = people;
  List<String> get films => _films;
  set films(List<String> films) => _films = films;
  String get skinColors => _skinColors;
  set skinColors(String skinColors) => _skinColors = skinColors;
  String get url => _url;
  set url(String url) => _url = url;

  SpecieModel.fromJson(Map<String, dynamic> json) {
    _averageHeight = json['average_height'];
    _averageLifespan = json['average_lifespan'];
    _classification = json['classification'];
    _created = json['created'];
    _designation = json['designation'];
    _edited = json['edited'];
    _eyeColors = json['eye_colors'];
    _hairColors = json['hair_colors'];
    _homeworld = json['homeworld'];
    _language = json['language'];
    _name = json['name'];
    _people = json['people'].cast<String>();
    _films = json['films'].cast<String>();
    _skinColors = json['skin_colors'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['average_height'] = this._averageHeight;
    data['average_lifespan'] = this._averageLifespan;
    data['classification'] = this._classification;
    data['created'] = this._created;
    data['designation'] = this._designation;
    data['edited'] = this._edited;
    data['eye_colors'] = this._eyeColors;
    data['hair_colors'] = this._hairColors;
    data['homeworld'] = this._homeworld;
    data['language'] = this._language;
    data['name'] = this._name;
    data['people'] = this._people;
    data['films'] = this._films;
    data['skin_colors'] = this._skinColors;
    data['url'] = this._url;
    return data;
  }

  @override
  void populateGenericModel() {
    genericTitle = _name;
    genericSubTitle = "Language: " + _language;
  }
}