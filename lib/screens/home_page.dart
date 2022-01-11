import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:mkp_app/components/bottom_navigation_bar.dart';
import 'package:mkp_app/components/vertical_card.dart';
import 'package:mkp_app/components/drawer.dart';
import 'package:mkp_app/components/header_category.dart';
import 'package:mkp_app/components/horizontal_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  
  final List<Map> mkpNews = [
    {"isim": "Speaker", "fotograf": "assets/card-yatay.png", "fiyat": "169"},
    {"isim": "İphone ", "fotograf": "assets/card-yatay.png", "fiyat": "11 469"},
  ];

  final List<Map> trNews = [
    {"isim": "Speaker", "fotograf": "assets/card-yatay.png", "fiyat": "169"},
    {"isim": "İphone ", "fotograf": "assets/card-yatay.png", "fiyat": "11 469"},
    {"isim": "Speaker", "fotograf": "assets/card-yatay.png", "fiyat": "169"},
    {"isim": "İphone ", "fotograf": "assets/card-yatay.png", "fiyat": "11 469"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerPage(),
        backgroundColor: const Color(0xFFFDEBEB),
        body: SafeArea(
            child: Stack(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: buildBaslik(context),
            ),
            const SizedBox(height: 20),
            headerCategory("home", context),
            imageCarousel(),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15.0),
              child: Text("MKP Haber",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),

            //yatay kartlar
            Column(
                children: mkpNews.map((Map product) {
              return horizontalCard(product["isim"], product["fotograf"],
                  product["fiyat"], context);
            }).toList()),

            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15.0),
              child: Text("Türkiye",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            //dikey kartlar
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 10,
                  children: trNews.map((Map news) {
                    return verticalCard(
                        news["isim"], news["fotograf"], news["fiyat"], context);
                  }).toList()),
            ),
            const SizedBox(
              height: 5.0,
            ),
          ]),
          bottomNavigationBar("home", context),
        ])));
  }
}

Widget buildBaslik(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(onTap: () {}, child: const Icon(Icons.menu)),
        const Text(
          "Ana Sayfa",
          style: TextStyle(
              fontSize: 29,
              color: Color(0xFF0A1034),
              fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            print("searche basıldı");
          },
          child: const Icon(
            Icons.search,
            size: 35,
          ),
        )
      ],
    ),
  );
}

Widget imageCarousel() {
  return SizedBox(
      height: 230.0,
      child: CarouselSlider(
        options: CarouselOptions(height: 400.0, autoPlay: true),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/card-yatay.png"),
                    fit: BoxFit.fill,
                  )),
                  child: Text(
                    'text $i',
                    style: const TextStyle(fontSize: 16.0),
                  ));
            },
          );
        }).toList(),
      ));
}
