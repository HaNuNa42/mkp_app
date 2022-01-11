import 'package:flutter/material.dart';
import 'package:mkp_app/components/bottom_navigation_bar.dart';
import 'package:mkp_app/components/delete_card.dart';
import 'package:mkp_app/components/drawer.dart';
import 'package:mkp_app/components/header.dart';

class DeleteNews extends StatelessWidget {
  late String categoryTitle;

  DeleteNews(this.categoryTitle, {Key? key}) : super(key: key);

  final List<Map> categoryNews = [
    {
      "isim": "Speaker Black White dfsdfws",
      "fotograf": "assets/card-yatay.png",
      "aciklama": "sdas"
    },
    {
      "isim": "İphone 11 Pro",
      "fotograf": "assets/card-yatay.png",
      "aciklama": "11 469 asda"
    },
    {
      "isim": "HP Notebook I7 Intel",
      "fotograf": "assets/card-yatay.png",
      "aciklama": "45 523"
    },
    {
      "isim": "İphone AirPods A4",
      "fotograf": "assets/card-yatay.png",
      "aciklama": "2 103"
    },
    {
      "isim": " Philips Kulaklık W57",
      "fotograf": "assets/card-yatay.png",
      "aciklama": "540"
    },
    {
      "isim": "Speaker Black White",
      "fotograf": "assets/card-yatay.png",
      "aciklama": "169"
    },
    {
      "isim": "Speaker Black White",
      "fotograf": "assets/card-yatay.png",
      "aciklama": "16"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerPage(),
        backgroundColor: const Color(0xFFFDEBEB),
        body: SafeArea(
            child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                //header
                header(categoryTitle, context),
                const SizedBox(
                  height: 15,
                ),
                //içerikler

                Expanded(
                  child: ListView(
                      children: categoryNews.map((Map news) {
                    return deletecard(news["isim"], news["fotograf"],
                        news["aciklama"], context);
                  }).toList()),
                ),

                const SizedBox(
                  height: 75,
                ),
              ],
            ),
          ),
          bottomNavigationBar('home', context),
        ])));
  }
}
