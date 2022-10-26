import 'package:flutter/material.dart';

Widget buildBaslik() {
  return const Padding(
    padding: EdgeInsets.only(top: 24),
    child: Text(
      "home",
      style: TextStyle(fontSize: 32, color: Color.fromARGB(15, 3, 3, 3), fontWeight: FontWeight.bold),
    ),
  );
}
