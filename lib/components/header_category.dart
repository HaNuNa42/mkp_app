import 'package:flutter/material.dart';
import 'package:mkp_app/screens/category.dart';

Widget headerCategory(String page, context) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 15),
    decoration: BoxDecoration(
      color: Colors.red[600],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildHeaderCategoryText(
            text: "Son Dakika",
            color: Colors.white,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CategoryPage("Son Dakika");
              }));
            }),
        buildHeaderCategoryText(
            text: "Ekonomi",
            color: Colors.black,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CategoryPage("Ekonomi");
              }));
            }),
        buildHeaderCategoryText(
            text: "Teknoloji",
            color: Colors.black,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CategoryPage("Teknoloji");
              }));
            }),
        buildHeaderCategoryText(
            text: "Magazin",
            color: Colors.black,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CategoryPage("Magazin");
              }));
            }),
      ],
    ),
  );
}

Widget buildHeaderCategoryText(
    {required String text, required Function() onTap, required Color color}) {
  return GestureDetector(
    onTap: onTap,
    child: Text(
      text,
      style: TextStyle(fontSize: 15, color: color, fontWeight: FontWeight.w600),
    ),
  );
}
