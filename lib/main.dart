import 'package:flutter/material.dart';
import 'package:statefull_widget_redo/HomePage.dart';

void main() {
  runApp(MainStatefull());
}

class MainStatefull extends StatefulWidget {
  const MainStatefull({Key? key}) : super(key: key);

  @override
  State<MainStatefull> createState() => _MainStatefullState();
}

class _MainStatefullState extends State<MainStatefull> {
  bool isDark = false;
  void ChangeTheme(value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(ChangeTheme, isDark),
    );
  }
}
