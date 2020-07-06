import 'generic.model.dart';

class PlanetModel extends GenericModel {
  String _climate;
  String _created;
  String _diameter;
  String _edited;
  List<String> _films;
  String _gravity;
  String _name;
  String _orbitalPeriod;
  String _population;
  List<String> _residents;
  String _rotationPeriod;
  String _surfaceWater;
  String _terrain;
  String _url;

  PlanetModel(
      {String climate,
        String created,
        String diameter,
        String edited,
        List<String> films,
        String gravity,
        String name,
        String orbitalPeriod,
        String population,
        List<String> residents,
        String rotationPeriod,
        String surfaceWater,
        String terrain,
        String url}) {
    this._climate = climate;
    this._created = created;
    this._diameter = diameter;
    this._edited = edited;
    this._films = films;
    this._gravity = gravity;
    this._name = name;
    this._orbitalPeriod = orbitalPeriod;
    this._population = population;
    this._residents = residents;
    this._rotationPeriod = rotationPeriod;
    this._surfaceWater = surfaceWater;
    this._terrain = terrain;
    this._url = url;
  }

  String get climate => _climate;
  set climate(String climate) => _climate = climate;
  String get created => _created;
  set created(String created) => _created = created;
  String get diameter => _diameter;
  set diameter(String diameter) => _diameter = diameter;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  List<String> get films => _films;
  set films(List<String> films) => _films = films;
  String get gravity => _gravity;
  set gravity(String gravity) => _gravity = gravity;
  String get name => _name;
  set name(String name) => _name = name;
  String get orbitalPeriod => _orbitalPeriod;
  set orbitalPeriod(String orbitalPeriod) => _orbitalPeriod = orbitalPeriod;
  String get population => _population;
  set population(String population) => _population = population;
  List<String> get residents => _residents;
  set residents(List<String> residents) => _residents = residents;
  String get rotationPeriod => _rotationPeriod;
  set rotationPeriod(String rotationPeriod) => _rotationPeriod = rotationPeriod;
  String get surfaceWater => _surfaceWater;
  set surfaceWater(String surfaceWater) => _surfaceWater = surfaceWater;
  String get terrain => _terrain;
  set terrain(String terrain) => _terrain = terrain;
  String get url => _url;
  set url(String url) => _url = url;

  PlanetModel.fromJson(Map<String, dynamic> json) {
    _climate = json['climate'];
    _created = json['created'];
    _diameter = json['diameter'];
    _edited = json['edited'];
    _films = json['films'].cast<String>();
    _gravity = json['gravity'];
    _name = json['name'];
    _orbitalPeriod = json['orbital_period'];
    _population = json['population'];
    _residents = json['residents'].cast<String>();
    _rotationPeriod = json['rotation_period'];
    _surfaceWater = json['surface_water'];
    _terrain = json['terrain'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['climate'] = this._climate;
    data['created'] = this._created;
    data['diameter'] = this._diameter;
    data['edited'] = this._edited;
    data['films'] = this._films;
    data['gravity'] = this._gravity;
    data['name'] = this._name;
    data['orbital_period'] = this._orbitalPeriod;
    data['population'] = this._population;
    data['residents'] = this._residents;
    data['rotation_period'] = this._rotationPeriod;
    data['surface_water'] = this._surfaceWater;
    data['terrain'] = this._terrain;
    data['url'] = this._url;
    return data;
  }

  @override
  void populateGenericModel() {
    String number =  _url.substring(29).replaceFirst("/", "");
    id = int.parse(number);
    genericTitle = _name;
    genericSubTitle = "Population: " + _population;
  }
}