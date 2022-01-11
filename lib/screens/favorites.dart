import 'package:flutter/material.dart';
import 'package:mkp_app/components/bottom_navigation_bar.dart';
import 'package:mkp_app/components/drawer.dart';
import 'package:mkp_app/components/header.dart';
import 'package:mkp_app/screens/news_detail.dart';

class FavoritePage extends StatelessWidget {
  late String title;

  FavoritePage(this.title, {Key? key}) : super(key: key);

  final List<Map> favorite = [
    {"isim": "Speaker", "fotograf": "assets/card-yatay.png"},
    {"isim": "İphone ", "fotograf": "assets/card-yatay.png"},
    {"isim": "Speaker", "fotograf": "assets/card-yatay.png"},
    {"isim": "İphone ", "fotograf": "assets/card-yatay.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerPage(),
        backgroundColor: const Color(0xFFFDEBEB),
        body: SafeArea(
            child: Stack(children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //header
                  header(title, context),
                  const SizedBox(
                    height: 32,
                  ),
                  //içerikler

                  Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 10,
                        children: favorite.map((Map fav) {
                          return buildNews(
                              fav["isim"], fav["fotograf"], context);
                        }).toList()),
                  )
                ],
              )),
          bottomNavigationBar('favorite', context),
        ])));
  }
}

Widget buildNews(String title, String photoUrl, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return NewsDetailPage(title);
      }));
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
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Image.asset(photoUrl),
          const SizedBox(
            height: 5,
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
            ],
          )
        ],
      ),
    ),
  );
}
