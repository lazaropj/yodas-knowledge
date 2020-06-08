import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/film.model.dart';
import 'package:yodas_knowledge/shared/constants.dart';

class FilmPage extends StatelessWidget {

  FilmModel _model;
  FilmPage(FilmModel model){
    this._model = model;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: Text("Title: ${this._model.title}")
          ),
          Container(
              child: Text("Director: ${this._model.director}")
          )
        ],
      ),
    );
  }


}
