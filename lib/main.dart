import 'package:flutter/material.dart';
import 'package:statefull_widget_project/HomePageScreen.dart';
import 'package:statefull_widget_project/HomePageState.dart';
import 'package:statefull_widget_project/mainStatefull.dart';

void main() {
  runApp(MainStatefull2());
}

class MainStatefull2 extends StatefulWidget {
  @override
  State<MainStatefull2> createState() => _MainStatefull2State();
}

class _MainStatefull2State extends State<MainStatefull2> {
  bool isDark = false;

  void idDarkfun(value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: MainStatefull(idDarkfun, isDark),
    );
  }
}
