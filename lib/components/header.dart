import 'package:flutter/material.dart';

Widget header(String title, context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        width: 15,
      ),
      //geri ikonu
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 27,
        ),
      ),

      const SizedBox(
        width: 24,
      ),

      Text(title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black)),
    ],
  );
}
