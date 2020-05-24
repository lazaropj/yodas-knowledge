import 'package:flutter/material.dart';
import 'package:yodas_knowledge/components/card.component.dart';
import 'package:yodas_knowledge/models/root.model.dart';

class RootPage extends StatefulWidget {
  RootModel model;

  @override
  _RootPageState createState() => _RootPageState(model);

  RootPage(RootModel) {
    this.model = RootModel;
  }
}

class _RootPageState extends State<RootPage> {
  RootModel model;

  _RootPageState(RootModel) {
    this.model = RootModel;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.model.category),
        ),
        body: Container(
            child: ListView.builder(
          itemCount: model.count,
          itemBuilder: (BuildContext context, int index) {
            return CardComponent("assets/images/card.jpg");
          },
        )),
      ),
    );
  }
}
