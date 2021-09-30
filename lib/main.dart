import 'package:educatorv/table.dart';
import 'package:flutter/material.dart';
import 'package:android_intent/android_intent.dart';
import 'package:educatorv/home.dart';


Future<List<ElementData?>> gridList = prepare();
void main() => runApp(MaterialApp(
  theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black, elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Colors.black, onPrimary: Colors.grey))),
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/table': (context) => ElementsApp(gridList),
  },
)

);
