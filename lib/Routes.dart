import 'package:flutter/material.dart';
import 'package:pokerplanning/screens/Home/index.dart';
import 'package:pokerplanning/theme/style.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/HomePage": (BuildContext context) => new HomeScreen(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: "MJV - Poker Planning",
      home: new HomeScreen(title: 'MJV - Poker Planning'),
      theme: appTheme,
      routes: routes,
    ));
  }
}