import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_shopping_app/pages/widgets/themes.dart';
import 'package:plant_shopping_app/utils/routes.dart';

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
        backgroundColor: MyTheme.darkgreen,
        child: Icon(
          CupertinoIcons.arrow_right,
          color: Colors.white,
        ),
      ),
      body: new Image.asset(
        "assets/images/s2-01.png",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}

class begin extends StatelessWidget {
  const begin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
        //moveToHome(context),
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: 150,
          height: 50,

          alignment: Alignment.center,
          child: // changeButton
              Icon(
            Icons.done,
            color: Colors.white,
          ),
          //   Text(
          //     "Login",
          //    style: TextStyle(
          //       color: Colors.black,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 20),
        ),
        // decoration: BoxDecoration(
        // color: MyTheme.darkgreen,
        // borderRadius: BorderRadius.circular(8),
        //  )
      ),
    );
  }
}
