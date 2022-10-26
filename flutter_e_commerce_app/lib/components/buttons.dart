import 'package:flutter/material.dart';

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
