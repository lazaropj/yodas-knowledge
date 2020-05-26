import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CardComponent extends StatelessWidget {

  final String _imagePath;
  CardComponent(this._imagePath);

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
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
              child: Text(
                "Account:. Value: ",
              ),
            ),
          ), onPressed: () => print("Click"),
        ),
      );
  }
}