import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guada/Models/RecipeData.dart';

class Detail extends StatelessWidget {
  final String title;
  final String image;
  final int index;

  Detail({this.title, this.image, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/$image"),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.darken),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              RecipeData().recipe[index].title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "GloriaHallelujah",
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  RecipeData().recipe[index].description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 2,
                    fontFamily: "GloriaHallelujah",
                  ),
                ),
                Text(
                  "Recipe",
                  style: TextStyle(
                    fontFamily: "GloriaHallelujah",
                    fontSize: 40,
                    letterSpacing: 2,
                    color: Colors.redAccent,
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text(
                    "Prep Time",
                    style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 2,
                    ),
                  ),
                  trailing: Text(
                    "${RecipeData().recipe[index].prepTime} mins",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.timer),
                  title: Text(
                    "Cock Time",
                    style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 2,
                    ),
                  ),
                  trailing: Text(
                    "${RecipeData().recipe[index].cockTime} mins",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.white,
                ),
                Text(
                  "Ingredients",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "GloriaHallelujah",
                    fontSize: 30,
                    letterSpacing: 2,
                    color: Colors.redAccent,
                  ),
                ),
                Text(
                  RecipeData().recipe[index].ingredients,
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  "Instructions",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "GloriaHallelujah",
                    fontSize: 30,
                    letterSpacing: 2,
                    color: Colors.redAccent,
                  ),
                ),
                Text(
                  RecipeData().recipe[index].instructions,
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
