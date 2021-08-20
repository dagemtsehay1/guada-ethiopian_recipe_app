import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  final String title;
  final String image;
  final Function onTabCallback;

  myCard({this.title, this.image, this.onTabCallback});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: onTabCallback,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("images/$image"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
