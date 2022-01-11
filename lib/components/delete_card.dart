import 'package:flutter/material.dart';

Widget deletecard(String title, String photoUrl, String description, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
    child: GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  title: Text(title),
                  content: Text(description),
                  actions: <Widget>[
                    TextButton(
                        child: Text('Sil'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    TextButton(
                        child: Text('Kapat'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        })
                  ]);
            });
      },
      child: Container(
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
        child: Row(
          children: [
            Image.asset("assets/card-yatay.png"),
            const SizedBox(width: 20),
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
                Text(description,
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
