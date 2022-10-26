import 'package:flutter/material.dart';

class BuildSalesItem extends StatelessWidget {
  const BuildSalesItem({
    Key? key, required this.text, required this.photoUrl, required this.discount, required this.screenwidth,

  }) : super(key: key);

  final String text;
  final String photoUrl;
  final String discount;
  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (screenwidth - 60) * 0.5,
      padding: const EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: const Color(0x0ffe0cf8),
            ),
            child: Text(
              discount,
              style: const TextStyle(
                color: Color(0xFF1F52E4),
                fontSize: 12,
              ),
            ),
          ),
          Image.asset(photoUrl),
          const SizedBox(
            height: 22,
          ),
          Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, color: Color(0xFF0A1034)))
        ],
      ),
    );
  }
}
