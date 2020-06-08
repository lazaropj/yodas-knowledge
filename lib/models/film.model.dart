import 'package:yodas_knowledge/models/generic.model.dart';

class FilmModel extends GenericModel {
  List<String> _characters;
  String _created;
  String _director;
  String _edited;
  int _episodeId;
  String _openingCrawl;
  List<String> _planets;
  String _producer;
  String _releaseDate;
  List<String> _species;
  List<String> _starships;
  String _title;
  String _url;
  List<String> _vehicles;

  FilmModel(
      {List<String> characters,
        String created,
        String director,
        String edited,
        int episodeId,
        String openingCrawl,
        List<String> planets,
        String producer,
        String releaseDate,
        List<String> species,
        List<String> starships,
        String title,
        String url,
        List<String> vehicles}) {
    this._characters = characters;
    this._created = created;
    this._director = director;
    this._edited = edited;
    this._episodeId = episodeId;
    this._openingCrawl = openingCrawl;
    this._planets = planets;
    this._producer = producer;
    this._releaseDate = releaseDate;
    this._species = species;
    this._starships = starships;
    this._title = title;
    this._url = url;
    this._vehicles = vehicles;
  }

  List<String> get characters => _characters;
  set characters(List<String> characters) => _characters = characters;
  String get created => _created;
  set created(String created) => _created = created;
  String get director => _director;
  set director(String director) => _director = director;
  String get edited => _edited;
  set edited(String edited) => _edited = edited;
  int get episodeId => _episodeId;
  set episodeId(int episodeId) => _episodeId = episodeId;
  String get openingCrawl => _openingCrawl;
  set openingCrawl(String openingCrawl) => _openingCrawl = openingCrawl;
  List<String> get planets => _planets;
  set planets(List<String> planets) => _planets = planets;
  String get producer => _producer;
  set producer(String producer) => _producer = producer;
  String get releaseDate => _releaseDate;
  set releaseDate(String releaseDate) => _releaseDate = releaseDate;
  List<String> get species => _species;
  set species(List<String> species) => _species = species;
  List<String> get starships => _starships;
  set starships(List<String> starships) => _starships = starships;
  String get title => _title;
  set title(String title) => _title = title;
  String get url => _url;
  set url(String url) => _url = url;
  List<String> get vehicles => _vehicles;
  set vehicles(List<String> vehicles) => _vehicles = vehicles;

  FilmModel.fromJson(Map<String, dynamic> json) {
    _characters = json['characters'].cast<String>();
    _created = json['created'];
    _director = json['director'];
    _edited = json['edited'];
    _episodeId = json['episode_id'];
    _openingCrawl = json['opening_crawl'];
    _planets = json['planets'].cast<String>();
    _producer = json['producer'];
    _releaseDate = json['release_date'];
    _species = json['species'].cast<String>();
    _starships = json['starships'].cast<String>();
    _title = json['title'];
    _url = json['url'];
    _vehicles = json['vehicles'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['characters'] = this._characters;
    data['created'] = this._created;
    data['director'] = this._director;
    data['edited'] = this._edited;
    data['episode_id'] = this._episodeId;
    data['opening_crawl'] = this._openingCrawl;
    data['planets'] = this._planets;
    data['producer'] = this._producer;
    data['release_date'] = this._releaseDate;
    data['species'] = this._species;
    data['starships'] = this._starships;
    data['title'] = this._title;
    data['url'] = this._url;
    data['vehicles'] = this._vehicles;
    return data;
  }

  @override
  void populateGenericModel() {
    id = _episodeId;
    genericTitle = _title;
    genericSubTitle = _director;
  }
}