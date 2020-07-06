import 'package:yodas_knowledge/models/generic.model.dart';

class StarshipModel extends GenericModel {
  String _mGLT;
  String _cargoCapacity;
  String _consumables;
  String _costInCredits;
  String _created;
  String _crew;
  String _edited;
  List<String> _films;
  String _hyperdriveRating;
  String _length;
  String _manufacturer;
  String _maxAtmospheringSpeed;
  String _model;
  String _name;
  String _passengers;
  List<String> _pilots;
  String _starshipClass;
  String _url;

  StarshipModel(
      {String mGLT,
        String cargoCapacity,
        String consumables,
        String costInCredits,
        String created,
        String crew,
        String edited,
        List<String> films,
        String hyperdriveRating,
        String length,
        String manufacturer,
        String maxAtmospheringSpeed,
        String model,
        String name,
        String passengers,
        List<String> pilots,
        String starshipClass,
        String url}) {
    this._mGLT = mGLT;
    this._cargoCapacity = cargoCapacity;
    this._consumables = consumables;
    this._costInCredits = costInCredits;
    this._created = created;
    this._crew = crew;
    this._edited = edited;
    this._films = films;
    this._hyperdriveRating = hyperdriveRating;
    this._length = length;
    this._manufacturer = manufacturer;
    this._maxAtmospheringSpeed = maxAtmospheringSpeed;
    this._model = model;
    this._name = name;
    this._passengers = passengers;
    this._pilots = pilots;
    this._starshipClass = starshipClass;
    this._url = url;
  }

  String get mGLT => _mGLT;
  set mGLT(String mGLT) => _mGLT = mGLT;
  String get cargoCapacity => _cargoCapacity;
  set cargoCapacity(String cargoCapacity) => _cargoCapacity = cargoCapacity;
  String get consumables => _consumables;
  set consumables(String consumables) => _consumables = consumables;
  String get costInCredits => _costInCredits;
  set costInCredits(String costInCredits) => _costInCredits = costInCredits;
  String get created => _created;
  set created(String created) => _created = created;
  String get crew => _crew;
  set crew(String crew) => _crew = crew;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  List<String> get films => _films;
  set films(List<String> films) => _films = films;
  String get hyperdriveRating => _hyperdriveRating;
  set hyperdriveRating(String hyperdriveRating) =>
      _hyperdriveRating = hyperdriveRating;
  String get length => _length;
  set length(String length) => _length = length;
  String get manufacturer => _manufacturer;
  set manufacturer(String manufacturer) => _manufacturer = manufacturer;
  String get maxAtmospheringSpeed => _maxAtmospheringSpeed;
  set maxAtmospheringSpeed(String maxAtmospheringSpeed) =>
      _maxAtmospheringSpeed = maxAtmospheringSpeed;
  String get model => _model;
  set model(String model) => _model = model;
  String get name => _name;
  set name(String name) => _name = name;
  String get passengers => _passengers;
  set passengers(String passengers) => _passengers = passengers;
  List<String> get pilots => _pilots;
  set pilots(List<String> pilots) => _pilots = pilots;
  String get starshipClass => _starshipClass;
  set starshipClass(String starshipClass) => _starshipClass = starshipClass;
  String get url => _url;
  set url(String url) => _url = url;

  StarshipModel.fromJson(Map<String, dynamic> json) {
    _mGLT = json['MGLT'];
    _cargoCapacity = json['cargo_capacity'];
    _consumables = json['consumables'];
    _costInCredits = json['cost_in_credits'];
    _created = json['created'];
    _crew = json['crew'];
    _edited = json['edited'];
    _films = json['films'].cast<String>();
    _hyperdriveRating = json['hyperdrive_rating'];
    _length = json['length'];
    _manufacturer = json['manufacturer'];
    _maxAtmospheringSpeed = json['max_atmosphering_speed'];
    _model = json['model'];
    _name = json['name'];
    _passengers = json['passengers'];
    _pilots = json['pilots'].cast<String>();
    _starshipClass = json['starship_class'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MGLT'] = this._mGLT;
    data['cargo_capacity'] = this._cargoCapacity;
    data['consumables'] = this._consumables;
    data['cost_in_credits'] = this._costInCredits;
    data['created'] = this._created;
    data['crew'] = this._crew;
    data['edited'] = this._edited;
    data['films'] = this._films;
    data['hyperdrive_rating'] = this._hyperdriveRating;
    data['length'] = this._length;
    data['manufacturer'] = this._manufacturer;
    data['max_atmosphering_speed'] = this._maxAtmospheringSpeed;
    data['model'] = this._model;
    data['name'] = this._name;
    data['passengers'] = this._passengers;
    data['pilots'] = this._pilots;
    data['starship_class'] = this._starshipClass;
    data['url'] = this._url;
    return data;
  }

  @override
  void populateGenericModel() {
    String number =  _url.substring(31).replaceFirst("/", "");
    id = int.parse(number);
    genericTitle = _name;
    genericSubTitle = "Model: " + _model;
  }
}