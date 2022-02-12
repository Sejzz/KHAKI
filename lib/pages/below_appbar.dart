import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_shopping_app/pages/app_body.dart';
import 'package:plant_shopping_app/pages/widgets/themes.dart';

class below_appbar extends StatelessWidget {
  const below_appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // var textTheme;
    // var textTheme;
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 130, bottom: 35, right: 20),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: MyTheme.darkgreen,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(
              children: [
                Text(
                  'KHAKI',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                )
              ],
            ),
            // child: AppBody(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                height: 52,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 4.5),
                          blurRadius: 12,
                          color: MyTheme.darkgreen)
                    ]),
                child: Row(children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 30),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Padding(padding: EdgeInsets.only(right: 18))
                ])),
          ),
          SizedBox(
            height: 0,
          ),
        ],
      ),

      //
    );
  }
}
