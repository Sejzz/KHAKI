import 'package:flutter/material.dart';
import 'package:plant_shopping_app/pages/below_appbar.dart';
import 'package:plant_shopping_app/pages/widgets/themes.dart';

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        below_appbar(),
        Container(
          height: 24,
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    "Trending Organic Products",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              //    Padding(
              //        padding: const EdgeInsets.only(
              //      left: 35,
              //    ),
              //    child: Text(
              //     "Organic Products",
              //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              //   )),

              /*    Container(
                  width: size.width * 0.4,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Image.network(
                          'https://image.made-in-china.com/2f0j00BzLRwokcZEqC/Biodegradable-Wooden-Cream-Bottles-Natural-Luxury-Bamboo-Cosmetic-Packaging.jpg'),
                    ],
                  )) */
            ],
          ),
        ),
        SizedBox(
          height: 0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TrendingCard(
                  image: 'assets/images/bottle.jpg',
                  title: "SWELL",
                  product: "BOTTLES",
                  price: 800,
                  press: () {}),
              TrendingCard(
                  image: 'assets/images/bag.jpg',
                  title: "LUNAR CAT",
                  product: "JUTE BAG",
                  price: 760,
                  press: () {}),
              TrendingCard(
                  image: 'assets/images/plates.jpg',
                  title: "WOODSPAN",
                  product: "PLATES",
                  price: 900,
                  press: () {}),
              TrendingCard(
                  image: 'assets/images/beauty.jpg',
                  title: "ILIA",
                  product: "ORGANIC",
                  price: 650,
                  press: () {}),
              TrendingCard(
                  image: 'assets/images/brush.jpg',
                  title: "WOODSPAN",
                  product: "TOOTHBRUSH",
                  price: 90,
                  press: () {}),
            ],
          ),
        ),
      ]),
    );
  }
}

class TrendingCard extends StatelessWidget {
  const TrendingCard({
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
          left: 20,
          top: 20,
          bottom: 50,
        ),
        width: size.width * 0.4,
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
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "$product".toUpperCase(),
                        style: TextStyle(color: Colors.grey),
                      )
                    ])),
                    Spacer(),
                    Text(
                      '\Rs$price',
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: Colors.brown),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
