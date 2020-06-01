import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yodas_knowledge/models/generic.model.dart';

class CardComponent extends StatelessWidget {
  final String _imagePath;
  final GenericModel _genericModel;
  CardComponent(this._imagePath, this._genericModel);

  @override
  Widget build(BuildContext context) {
    _genericModel.populateGenericModel();
    return SafeArea(
      child: CupertinoButton(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(_imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
              margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Center(
                child: Text(
                    "${this._genericModel.genericTitle} - ${this._genericModel.genericSubTitle}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Starjedi',
                    )),
              )),
        ),
        onPressed: () => print("Click"),
      ),
    );
  }
}
