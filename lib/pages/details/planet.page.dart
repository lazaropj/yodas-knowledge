import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/film.model.dart';
import 'package:yodas_knowledge/models/people.model.dart';

class PeoplePage extends StatelessWidget {

  PeopleModel _model;
  PeoplePage(PeopleModel model){
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
              child: Text("Gender: ${this._model.gender}")
          )
        ],
      ),
    );
  }


}
