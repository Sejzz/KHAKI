import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_shopping_app/pages/app_body.dart';
import 'package:plant_shopping_app/pages/below_appbar.dart';
import 'package:plant_shopping_app/pages/categories.dart';
import 'package:plant_shopping_app/pages/widgets/drawer.dart';
import 'package:plant_shopping_app/pages/widgets/themes.dart';
import 'package:plant_shopping_app/utils/routes.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    //loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,

          // automaticallyImplyLeading: false,
          /*  title: Text(
            "app",
            textAlign: TextAlign.center,
          ), */
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                // enableFeedback: false,
                onPressed: () {},
                icon: const Icon(Icons.home, color: Colors.white, size: 35),
              ),
              IconButton(
                //enableFeedback: false,
                onPressed: () =>
                    Navigator.pushNamed(context, MyRoutes.categoriesRoute),
                icon: const Icon(Icons.category, color: Colors.white, size: 35),
              ),
              IconButton(
                // enableFeedback: false,
                onPressed: () {},
                icon: const Icon(Icons.person, color: Colors.white, size: 35),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [AppBody()],
            ),
          ),
        ),
        drawer: MyDrawer());
  }
}
