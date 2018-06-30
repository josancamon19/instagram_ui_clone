import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/home.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false ,
    title: "Instagram",
    theme: ThemeData(
      primaryColor: Colors.black,
      primaryIconTheme: IconThemeData(color: Colors.black),
      primaryTextTheme:
          TextTheme(title: TextStyle(color: Colors.black, fontFamily: "Aveny")),
    ),
    home: Home(),
  ));
}
