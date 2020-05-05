import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/people.model.dart';
import 'package:yodas_knowledge/shared/custom_dio/custom_dio.dart';

class PeoplePage extends StatefulWidget {
  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People Page"),
      ),
      body: Center(
        child: FlatButton(
          onPressed: getPeoples,
          child: Text("Get Peoples"),
        )
      )
    );
  }


  Future<List<PeopleModel>> getPeoples() async {
    try{
      var dio =  new CustomDio();
      var response = await  dio.get("people/");
      print("Testing the list ${response.data}");
    } on DioError catch (error) {
      throw(error);
    }
  }

}
