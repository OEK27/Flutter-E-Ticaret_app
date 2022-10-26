import 'package:flutter/material.dart';
Widget buildbanner() {
  return Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
      decoration: BoxDecoration(
        color: const Color(0xFF0001FC),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Bose Home Speaker",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "USD 279",
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image.asset("assets/images/speaker.jpeg")
        ],
      ),
    ),
  );
}