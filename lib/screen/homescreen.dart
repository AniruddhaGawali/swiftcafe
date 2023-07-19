import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:swiftcafe/widgits/search.dart';
import 'package:swiftcafe/widgits/card.dart';
import 'package:swiftcafe/widgits/card2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/main.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20.0,
                sigmaY: 20.0,
              ),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  MostPopularBeverages(),
                  Getitinstantly()
                ],
              )))
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 20.0,
              sigmaY: 20.0,
            ),
            child: Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(.3)),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(.8),
                    ),
                    child: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  const Icon(
                    Icons.wallet,
                    color: Colors.white,
                  ),
                  const Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.white,
                  ),
                  const Icon(
                    Icons.messenger_outline_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Getitinstantly extends StatelessWidget {
  const Getitinstantly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text("Get it instantly",
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white, fontSize: 20)),
            ),
            Card2(),
            Card2(),
            Card2(),
            Card2(),
            Card2(),
            Card2(),
          ],
        ));
  }
}

class MostPopularBeverages extends StatelessWidget {
  const MostPopularBeverages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Most Popular Beverages",
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white, fontSize: 20)),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                BeveragesCard(),
                BeveragesCard(),
                BeveragesCard(),
                BeveragesCard(),
                BeveragesCard(),
                BeveragesCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 160, maxHeight: 180),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20.0,
          sigmaY: 20.0,
        ),
        child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.black.withOpacity(0.2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "👋",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "20/12/2023",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          "Joshua Scanlan",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(.8),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.shopping_basket_outlined,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/profile.png',
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
                PersonalSearchBar()
              ],
            )),
      ),
    );
  }
}
