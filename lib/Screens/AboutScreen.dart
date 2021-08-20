import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Center(
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
          Text(
            "ጓዳ / Guada is Ethiopian Recipes App",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1,
              fontFamily: "GloriaHallelujah",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Developer",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 30,
              fontFamily: "GloriaHallelujah",
              letterSpacing: 2,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 35,
            ),
            title: Text(
              "Dagem Tsehay",
              style: TextStyle(
                fontFamily: "GloriaHallelujah",
                fontSize: 25,
                letterSpacing: 2,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.mail_outline,
              size: 35,
            ),
            title: Text(
              "dagemtsehay4@gmail.com",
              style: TextStyle(
                fontFamily: "GloriaHallelujah",
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.phone_iphone,
              size: 35,
            ),
            title: Text(
              "+251917841541",
              style: TextStyle(
                fontFamily: "GloriaHallelujah",
                fontSize: 25,
                letterSpacing: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
