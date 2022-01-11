import 'package:flutter/material.dart';
import 'package:mkp_app/screens/favorites.dart';
import 'package:mkp_app/screens/home_page.dart';
import 'package:mkp_app/screens/profile.dart';

Widget bottomNavigationBar(String page, context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 13),
      decoration: BoxDecoration(color: Colors.red, boxShadow: [
        BoxShadow(
          offset: const Offset(0, -3),
          color: Colors.black.withOpacity(0.25),
          blurRadius: 10,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavIcon(
              iconData: Icons.home,
              active: page == "home",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              }),
          buildNavIcon(
              iconData: Icons.favorite,
              active: page == "favorite",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FavoritePage("Favoriler");
                }));
              }),
          buildNavIcon(
              iconData: Icons.person,
              active: page == "profile",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePage("Profilim");
                }));
              }),
        ],
      ),
    ),
  );
}

Widget buildNavIcon(
    {required IconData iconData,
    required bool active,
    required Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Icon(
      iconData,
      size: 30,
      color: active ? Colors.white : Colors.white54,
    ),
  );
}
