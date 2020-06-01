import 'package:yodas_knowledge/models/generic.model.dart';

class PeopleModel extends GenericModel {
  String _birthYear;
  String _created;
  String _edited;
  String _eyeColor;
  List<String> _films;
  String _gender;
  String _hairColor;
  String _height;
  String _homeworld;
  String _mass;
  String _name;
  String _skinColor;
  List<String> _species;
  List<String> _starships;
  String _url;
  List<String> _vehicles;

  PeopleModel(
      {String birthYear,
        String created,
        String edited,
        String eyeColor,
        List<String> films,
        String gender,
        String hairColor,
        String height,
        String homeworld,
        String mass,
        String name,
        String skinColor,
        List<String> species,
        List<String> starships,
        String url,
        List<String> vehicles}) {
    this._birthYear = birthYear;
    this._created = created;
    this._edited = edited;
    this._eyeColor = eyeColor;
    this._films = films;
    this._gender = gender;
    this._hairColor = hairColor;
    this._height = height;
    this._homeworld = homeworld;
    this._mass = mass;
    this._name = name;
    this._skinColor = skinColor;
    this._species = species;
    this._starships = starships;
    this._url = url;
    this._vehicles = vehicles;
  }

  String get birthYear => _birthYear;
  set birthYear(String birthYear) => _birthYear = birthYear;
  String get created => _created;
  set created(String created) => _created = created;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  String get eyeColor => _eyeColor;
  set eyeColor(String eyeColor) => _eyeColor = eyeColor;
  List<String> get films => _films;
  set films(List<String> films) => _films = films;
  String get gender => _gender;
  set gender(String gender) => _gender = gender;
  String get hairColor => _hairColor;
  set hairColor(String hairColor) => _hairColor = hairColor;
  String get height => _height;
  set height(String height) => _height = height;
  String get homeworld => _homeworld;
  set homeworld(String homeworld) => _homeworld = homeworld;
  String get mass => _mass;
  set mass(String mass) => _mass = mass;
  String get name => _name;
  set name(String name) => _name = name;
  String get skinColor => _skinColor;
  set skinColor(String skinColor) => _skinColor = skinColor;
  List<String> get species => _species;
  set species(List<String> species) => _species = species;
  List<String> get starships => _starships;
  set starships(List<String> starships) => _starships = starships;
  String get url => _url;
  set url(String url) => _url = url;
  List<String> get vehicles => _vehicles;
  set vehicles(List<String> vehicles) => _vehicles = vehicles;

  PeopleModel.fromJson(Map<String, dynamic> json) {
    _birthYear = json['birth_year'];
    _created = json['created'];
    _edited = json['edited'];
    _eyeColor = json['eye_color'];
    _films = json['films'].cast<String>();
    _gender = json['gender'];
    _hairColor = json['hair_color'];
    _height = json['height'];
    _homeworld = json['homeworld'];
    _mass = json['mass'];
    _name = json['name'];
    _skinColor = json['skin_color'];
    _species = json['species'].cast<String>();
    _starships = json['starships'].cast<String>();
    _url = json['url'];
    _vehicles = json['vehicles'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['birth_year'] = this._birthYear;
    data['created'] = this._created;
    data['edited'] = this._edited;
    data['eye_color'] = this._eyeColor;
    data['films'] = this._films;
    data['gender'] = this._gender;
    data['hair_color'] = this._hairColor;
    data['height'] = this._height;
    data['homeworld'] = this._homeworld;
    data['mass'] = this._mass;
    data['name'] = this._name;
    data['skin_color'] = this._skinColor;
    data['species'] = this._species;
    data['starships'] = this._starships;
    data['url'] = this._url;
    data['vehicles'] = this._vehicles;
    return data;
  }

  @override
  void populateGenericModel() {
    genericTitle = _name;
    genericSubTitle = _created;
  }
}
