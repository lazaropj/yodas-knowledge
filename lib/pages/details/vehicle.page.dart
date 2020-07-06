import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/specie.model.dart';
import 'package:yodas_knowledge/models/starship.model.dart';
import 'package:yodas_knowledge/models/vehicle.model.dart';

class VehiclePage extends StatelessWidget {

  VehicleModel _model;
  VehiclePage(VehicleModel model){
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
