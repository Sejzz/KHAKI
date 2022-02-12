import 'package:flutter/material.dart';
import 'package:plant_shopping_app/pages/categories.dart';
import 'package:plant_shopping_app/pages/first.dart';
import 'package:plant_shopping_app/pages/home_page.dart';
import 'package:plant_shopping_app/pages/login_page.dart';
import 'package:plant_shopping_app/pages/widgets/themes.dart';
import 'package:plant_shopping_app/utils/routes.dart';
import 'package:plant_shopping_app/pages/widgets/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: MyTheme.darkgreen,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        //  color: MyTheme.greenbg(),

        initialRoute: MyRoutes.firstRoute,
        routes: {
          "/": (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.categoriesRoute: (context) => categories(),
          MyRoutes.firstRoute: (context) => first(),
        });
  }
}
