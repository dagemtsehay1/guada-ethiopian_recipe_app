import 'package:flutter/material.dart';
import 'package:guada/Widgets/myCard.dart';
import 'package:guada/Screens/Detail.dart';
import 'package:guada/Widgets/MyDrawer.dart';
import 'package:guada/Models/FoodData.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("ጓዳ"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: FoodData().foods.length,
          itemBuilder: (context, index) {
            return myCard(
              title: FoodData().foods[index].title,
              image: FoodData().foods[index].image,
              onTabCallback: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Detail(
                      title: FoodData().foods[index].title,
                      image: FoodData().foods[index].image,
                      index: index,
                    );
                  },
                ));
              },
            );
          },
        ),
      ),
    );
  }
}
