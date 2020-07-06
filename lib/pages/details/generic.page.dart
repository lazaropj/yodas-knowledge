import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/generic.model.dart';
import 'package:yodas_knowledge/models/planet.model.dart';
import 'package:yodas_knowledge/pages/details/film.page.dart';
import 'package:yodas_knowledge/pages/details/people.page.dart';
import 'package:yodas_knowledge/pages/details/planet.page.dart';
import 'package:yodas_knowledge/pages/details/specie.page.dart';
import 'package:yodas_knowledge/pages/details/starships.page.dart';
import 'package:yodas_knowledge/pages/details/vehicle.page.dart';

class GenericPage extends StatelessWidget {
  GenericModel _model;
  String _imageUrl = "https://starwars-visualguide.com/assets/img/";
  GenericPage(GenericModel model) {
    this._model = model;
  }

  @override
  Widget build(BuildContext context) {
    var page = generateDetailComponent(this._model);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(this._model.genericTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: SizedBox(
                width: 600,
                height: 400,
                child: Image.network (this._imageUrl),
              )
              ,
            ),
            Container(
              child: page,
            )
          ],
        ),
      ),
    ));
  }

  StatelessWidget generateDetailComponent(GenericModel model) {
    var runtimeType = _model.runtimeType.toString();

    if (runtimeType == "FilmModel") {
      this._imageUrl = this._imageUrl + "films/" + model.id.toString() + ".jpg";
      return FilmPage(model);
    } else if (runtimeType == "PeopleModel") {
      this._imageUrl = this._imageUrl + "characters/" + model.id.toString() + ".jpg";
      return PeoplePage(model);
    } else if (runtimeType == "PlanetModel") {
      this._imageUrl = this._imageUrl + "planets/" + model.id.toString() + ".jpg";
      return PlanetPage(model);
    } else if (runtimeType == "SpecieModel") {
      this._imageUrl = this._imageUrl + "species/" + model.id.toString() + ".jpg";
      return SpeciePage(model);
    } else if (runtimeType == "StarshipModel") {
      this._imageUrl = this._imageUrl + "starships/" + model.id.toString() + ".jpg";
      return StarshipsPage(model);
    } else if (runtimeType == "VehicleModel") {
      this._imageUrl = this._imageUrl + "vehicles/" + model.id.toString() + ".jpg";
      return VehiclePage(model);
    }
  }
}
