import 'package:scoped_model/scoped_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/category.model.dart';
import 'package:yodas_knowledge/models/root.model.dart';
import 'package:yodas_knowledge/pages/root.page.dart';
import 'package:yodas_knowledge/shared/custom_dio/custom_dio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categorys = new List();

  Future<List<CategoryModel>> getCategory() async {
    try {
      var dio = new CustomDio();
      var response = await dio.get("/");
      response.data.forEach((key, value) {
        categorys.add(CategoryModel(title: key, image: value));
      });
    } on DioError catch (error) {
      throw (error);
    }
  }

  @override
  Widget build(BuildContext context) {
    getCategory();
    return ScopedModel(
      model: CategoryModel(),
      child: ScopedModelDescendant<CategoryModel>(
          builder: (BuildContext context, Widget child, CategoryModel model) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("Yoda' Knowledge"),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    //model.setLoading(true);
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
                child: ListView.builder(
              itemCount: categorys.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(context, categorys[index]);
              },
            )),
          ),
        );
      }),
    );
  }
}

Widget Card(BuildContext context, CategoryModel category) {
  return Container(
    height: 200.0,
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
                  image: NetworkImage(
                    category.image,
                  ),
                  placeholder: AssetImage('assets/images/placeholder.png'),
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
                          fontSize: 18.0,
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
        getRoot(category).then((rootModel) {
          rootModel.category = category.title;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => RootPage(rootModel)));
        });
      },
    ),
  );
}

Future<RootModel> getRoot(CategoryModel category) async {
  try {
    var dio = new CustomDio();
    var response = await dio.get("/" + category.title + "/");
    RootModel rootModel = RootModel.fromJson(response.data);
    return rootModel;
  } on DioError catch (error) {
    throw (error);
  }
}
