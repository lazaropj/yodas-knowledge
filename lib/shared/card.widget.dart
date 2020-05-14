import 'package:flutter/material.dart';
import 'package:yodas_knowledge/models/category.model.dart';

class Card extends StatelessWidget {

  final CategoryModel category;
  Card({Key key, @required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
//                    Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                            builder: (BuildContext context) =>
//                                MovieDetail(film: model.film[index])));
          print('Click on card.');
        },
      ),
    );
  }
}
