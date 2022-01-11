import 'package:flutter/material.dart';

Widget verticalCard(String title, String photoUrl, String price, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
    child: GestureDetector(
      onTap: () {
        print("dikey karta basıldı");
      },
      child: Container(
        height: 100,
        width: 100,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 24,
                  offset: const Offset(0, 16))
            ]),
        child: Column(
          children: [
            Image.asset("assets/card-yatay.png"),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(price,
                    style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
