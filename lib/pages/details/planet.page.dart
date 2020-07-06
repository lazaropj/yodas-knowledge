import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/planet.model.dart';

class PlanetPage extends StatelessWidget {

  PlanetModel _model;
  PlanetPage(PlanetModel model){
    this._model = model;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: Text("Name: ${this._model.name}")
          ),
          Container(
              child: Text("Population: ${this._model.population}")
          )
        ],
      ),
    );
  }


}
