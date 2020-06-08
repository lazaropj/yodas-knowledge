import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yodas_knowledge/models/category.model.dart';
import 'package:yodas_knowledge/pages/root.page.dart';
import 'package:yodas_knowledge/pages/stores/home.store.dart';
import 'package:yodas_knowledge/shared/constants.dart';
import 'package:yodas_knowledge/shared/custom_dio/custom_dio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categorys = new List();

  HomeStore homeStore = new HomeStore();

  Future<List<CategoryModel>> getCategory() async {
    if (categorys.isEmpty) {
      try {
        var dio = new CustomDio(BASE_URL);
        var response = await dio.get("/");
        response.data.forEach((key, value) {
          categorys.add(CategoryModel(title: key, image: key));
        });
      } on DioError catch (error) {
        throw (error);
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    homeStore.loadCategoryList();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Yoda' Knowledge"),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                getCategory();
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
                size: 22.0,
              ),
            ),
          ],
        ),
        body: Container(
            child: Observer(
              builder: (_){
                if(homeStore.loading){
                  return Center(
                    child: CircularProgressIndicator(
                      valueColor:  AlwaysStoppedAnimation(Colors.black),
                    ),
                  );
                }else if(homeStore.categoryList.isEmpty){
                    return Center(
                      child: Text(
                        "Sem resultados",
                        textAlign: TextAlign.center,
                      ),
                    );
                }else{
                  return ListView.builder(
                    itemCount: homeStore.categoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(context, homeStore.categoryList[index]);
                    },
                  );
                }
              },
            )),
      ),
    );;
  }
}

Widget Card(BuildContext context, CategoryModel category) {
  return Container(
    height: 180.0,
    width: MediaQuery.of(context).size.width,
    alignment: Alignment.center,
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: InkWell(
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Stack(
              children: <Widget>[
                FadeInImage(
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(
                    category.image,
                  ),
                  placeholder: AssetImage(category.image),
                ),
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Center(
                  child: Hero(
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        '${category.title}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    tag: '${category.title}',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => RootPage(category)));
      },
    ),
  );
}
