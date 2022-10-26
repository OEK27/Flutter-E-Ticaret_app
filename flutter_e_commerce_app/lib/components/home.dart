import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/components/products.dart';

import 'banner.dart';
import 'baslik.dart';
import 'buttons.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              //Başlık
              buildBaslik(),
              //Banner
              buildbanner(),
              //Buttons
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //ilk eleman
                    ButtonIcons(
                      icon: Icons.menu,
                      text: 'Categories',
                    ),
                    ButtonIcons(
                      icon: Icons.star_border,
                      text: 'Favorites',
                    ),
                    ButtonIcons(
                      icon: Icons.card_giftcard,
                      text: 'Gift',
                    ),
                    ButtonIcons(
                      icon: Icons.people,
                      text: 'Best selling',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Sales Title
              const Text("Sales",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xFF0A1034),
                  )),
              const SizedBox(
                height: 16,
              ),
              //Sales Items
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildSalesItem(
                    text: "Smartphone",
                    photoUrl: "assets/images/a25-siyah-01_t6n0aj_500.jpg",
                    discount: "-50%",
                    screenwidth: screenwidth,
                  ),
                  BuildSalesItem(
                    text: "Smartphone",
                    photoUrl: "assets/images/a25-siyah-01_t6n0aj_500.jpg",
                    discount: "-50%",
                    screenwidth: screenwidth,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
