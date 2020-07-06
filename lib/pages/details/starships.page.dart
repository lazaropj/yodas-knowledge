import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/specie.model.dart';
import 'package:yodas_knowledge/models/starship.model.dart';

class StarshipsPage extends StatelessWidget {

  StarshipModel _model;
  StarshipsPage(StarshipModel model){
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
              child: Text("Model: ${this._model.model}")
          )
        ],
      ),
    );
  }


}
