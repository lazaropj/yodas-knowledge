class RootModel {
  String _films;
  String _people;
  String _planets;
  String _species;
  String _starships;
  String _vehicles;

  RootModel(
      {String films,
        String people,
        String planets,
        String species,
        String starships,
        String vehicles}) {
    this._films = films;
    this._people = people;
    this._planets = planets;
    this._species = species;
    this._starships = starships;
    this._vehicles = vehicles;
  }

  String get films => _films;
  set films(String films) => _films = films;
  String get people => _people;
  set people(String people) => _people = people;
  String get planets => _planets;
  set planets(String planets) => _planets = planets;
  String get species => _species;
  set species(String species) => _species = species;
  String get starships => _starships;
  set starships(String starships) => _starships = starships;
  String get vehicles => _vehicles;
  set vehicles(String vehicles) => _vehicles = vehicles;

  RootModel.fromJson(Map<String, dynamic> json) {
    _films = json['films'];
    _people = json['people'];
    _planets = json['planets'];
    _species = json['species'];
    _starships = json['starships'];
    _vehicles = json['vehicles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['films'] = this._films;
    data['people'] = this._people;
    data['planets'] = this._planets;
    data['species'] = this._species;
    data['starships'] = this._starships;
    data['vehicles'] = this._vehicles;
    return data;
  }
}
