import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  final String text;
  const RowText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Text(
            "See All",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          ),
        ],
      ),
    );
  }
}
