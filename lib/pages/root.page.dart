import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yodas_knowledge/components/card.component.dart';
import 'package:yodas_knowledge/models/VehicleModel.dart';
import 'package:yodas_knowledge/models/category.model.dart';
import 'package:yodas_knowledge/models/film.model.dart';
import 'package:yodas_knowledge/models/people.model.dart';
import 'package:yodas_knowledge/models/planet.model.dart';
import 'package:yodas_knowledge/models/root.model.dart';
import 'package:yodas_knowledge/models/specie.model.dart';
import 'package:yodas_knowledge/models/starship.model.dart';
import 'package:yodas_knowledge/shared/custom_dio/custom_dio.dart';

class RootPage extends StatefulWidget {
  CategoryModel categoryModel;

  @override
  _RootPageState createState() => _RootPageState(categoryModel);

  RootPage(CategoryModel categoryModel) {
    this.categoryModel = categoryModel;
  }
}

class _RootPageState extends State<RootPage> {
  CategoryModel categoryModel;

  _RootPageState(CategoryModel categoryModel) {
    this.categoryModel = categoryModel;
  }

  List cards = [];

  @override
  Widget build(BuildContext context) {
    populateList();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.categoryModel.title.toString()),
        ),
        body: Container(
            child: FutureBuilder(
              future: getModels(this.categoryModel.title),
              builder: (context, models) {
                if (models.hasData) {
                  return ListView.builder(
                    itemCount: cards.length,
                    itemBuilder: (BuildContext context, int index) {
                      print(cards.length.toString() + " tamanho ################");
                      return CardComponent("assets/images/card.jpg");
                    },
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

              },
            )
        ),
      ),
    );
  }

  void populateList() {

      getModels(this.categoryModel.title).then((models){
        if (this.categoryModel.title == "films") {
          models.forEach((model) {
            cards.add(FilmModel.fromJson(model));
          });
        }
        if (this.categoryModel.title == "people") {
          models.forEach((model) {
            cards.add(PeopleModel.fromJson(model));
          });
        }
        if (this.categoryModel.title == "planets") {
          models.forEach((model) {
            cards.add(PlanetModel.fromJson(model));
          });
        }
        if (this.categoryModel.title == "species") {
          models.forEach((model) {
            cards.add(SpecieModel.fromJson(model));
          });
        }
        if (this.categoryModel.title == "starships") {
          models.forEach((model) {
            cards.add(StarshipModel.fromJson(model));
          });
        }
        if (this.categoryModel.title == "vehicles") {
          models.forEach((model) {
            cards.add(VehicleModel.fromJson(model));
          });
        }
      });

  }

  Future<List> getModels(String category) async {
    try {
      var dio = new CustomDio();
      var response = await dio.get("/" + category + "/");
      return response.data["results"];
    } on DioError catch (error) {
      throw (error);
    }
  }

}




