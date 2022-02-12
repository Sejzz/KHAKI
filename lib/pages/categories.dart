import 'package:flutter/material.dart';
import 'package:plant_shopping_app/pages/widgets/themes.dart';
import 'package:plant_shopping_app/utils/routes.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'Categories',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.white,
                // fontWeight: FontWeight.bold,
                fontSize: 22),
          ),
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
                onPressed: () =>
                    Navigator.pushNamed(context, MyRoutes.homeRoute),
                icon: const Icon(Icons.home, color: Colors.white, size: 35),
              ),
              IconButton(
                //enableFeedback: false,
                onPressed: () {},
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
        body: header());
  }
}

class header extends StatelessWidget {
  const header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(padding: const EdgeInsets.only(left: 30, top: 45)),
        Text(
          '             Products Categories',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              productlist(
                  image: 'assets/images/bottle.jpg',
                  title: "SWELL",
                  product: "                    BOTTLES",
                  price: 800,
                  press: () {}),
              productlist(
                  image: 'assets/images/bag.jpg',
                  title: "LUNAR CAT",
                  product: "                        BAGS",
                  price: 760,
                  press: () {}),
              productlist(
                  image: 'assets/images/plates.jpg',
                  title: "WOODSPAN",
                  product: "                       PLATES",
                  price: 900,
                  press: () {}),
              productlist(
                  image: 'assets/images/beauty.jpg',
                  title: "ILIA",
                  product: "                      ORGANIC",
                  price: 650,
                  press: () {}),
              productlist(
                  image: 'assets/images/brush.jpg',
                  title: "WOODSPAN",
                  product: "                TOOTHBRUSH",
                  price: 90,
                  press: () {}),
            ],
          ),
        ),
      ]),
    );
  }
}

class productlist extends StatelessWidget {
  const productlist({
    Key? key,
    required this.image,
    required this.title,
    required this.product,
    required this.price,
    required this.press,
    // required this.size,
  }) : super(key: key);
  final String image, title, product;
  final int price;
  final Function press;
  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
          left: 75,
          top: 20,
          bottom: 20,
        ),
        width: size.width * 0.6,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 15)),
            Image.asset(image),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: MyTheme.darkgreen.withOpacity(0.5),
                      )
                    ]),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "$product".toUpperCase(),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ])),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
