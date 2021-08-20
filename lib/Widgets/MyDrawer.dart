import 'dart:io';

import 'package:flutter/material.dart';
import 'package:guada/Screens/AboutScreen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Shiro-Wat.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.darken),
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  child: Text(
                    "ጓዳ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  radius: 70,
                  backgroundColor: Colors.black45,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return About();
                      },
                    ));
                  },
                  padding: EdgeInsets.all(0),
                  child: ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 2,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 10,
                  thickness: 1,
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    exit(0);
                  },
                  child: ListTile(
                    title: Text(
                      "Exit",
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 2,
                      ),
                    ),
                    leading: Icon(
                      Icons.exit_to_app,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
