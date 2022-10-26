import 'package:flutter/material.dart';

import 'components/banner.dart';
import 'components/baslik.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Başlık
                  buildBaslik(),
                  //Banner
                  buildbanner(),
                  //Buttons
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: Row(
                      children: [
                        //ilk eleman
                        ButtonIcons( icon: Icons.menu, text: 'Categories', ),
                        ButtonIcons(icon: Icons.star_border, text: 'Favorites', ),
                        ButtonIcons(icon: Icons.card_giftcard, text: 'Gift',),
                        ButtonIcons(icon: Icons.people, text: 'Best selling', ),
                      ],
                    ),
                  )

                  // Sales
                ],
              ),
            ),
          ),
        ));
  }
}

// ignore: non_constant_identifier_names
Widget ButtonIcons({
  required String text,
  required IconData icon,
 Widget? widget,
   BuildContext? context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget!;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE0ECF8),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF0001FC),
            size: 18,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF1F53E4),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}
