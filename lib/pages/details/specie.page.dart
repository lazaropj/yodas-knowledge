import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/specie.model.dart';

class SpeciePage extends StatelessWidget {

  SpecieModel _model;
  SpeciePage(SpecieModel model){
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
              child: Text("Language: ${this._model.language}")
          )
        ],
      ),
    );
  }


}
