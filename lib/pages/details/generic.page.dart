import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/generic.model.dart';
import 'package:yodas_knowledge/pages/details/film.page.dart';

class GenericPage extends StatelessWidget {
  GenericModel _model;
  String _imageUrl = "https://starwars-visualguide.com/assets/img/";
  GenericPage(GenericModel model) {
    this._model = model;
  }

  @override
  Widget build(BuildContext context) {
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
              child: Image.network ("https://starwars-visualguide.com/assets/img/characters/2.jpg"),
            ),
            Container(
              child: generateDetailComponent(this._model),
            )
          ],
        ),
      ),
    ));
  }

  generateDetailComponent(GenericModel model) {
    var runtimeType = _model.runtimeType.toString();

    if (runtimeType == "FilmModel") {
      this._imageUrl = this._imageUrl + "films/" + model.id.toString() + ".jpg";
      return FilmPage(model);
    } else if (runtimeType == "PeopleModel") {
    } else if (runtimeType == "PlanetModel") {
    } else if (runtimeType == "SpecieModel") {
    } else if (runtimeType == "StarshipModel") {
    } else if (runtimeType == "VehicleModel") {}
  }
}
