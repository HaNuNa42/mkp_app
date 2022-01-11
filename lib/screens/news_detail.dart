import 'package:flutter/material.dart';
import 'package:mkp_app/components/bottom_navigation_bar.dart';
import 'package:mkp_app/components/drawer.dart';
import 'package:mkp_app/components/horizontal_card.dart';

class NewsDetailPage extends StatefulWidget {
  String title;

  NewsDetailPage(this.title, {Key? key}) : super(key: key);

  @override
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  final List<Map> lastNews = [
    {
      "isim": "Speaker Black White",
      "fotograf": "assets/card-yatay.png",
      "aciklama": "sdas"
    },
  ];

  Color selectedColor = const Color(0xFF52514F);
  int selectedCapacity = 64;

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
                    //header
                    buildheader(widget.title, context),
                    //kategoriler
                    const SizedBox(
                      height: 32,
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ListView(
                          children: [
                            const SizedBox(
                              height: 25,
                            ),

                            //ürün fotografı
                            Center(
                                child: Image.asset(
                              "assets/card-yatay.png",
                            )),

                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                                color: Colors.white,
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.title,
                                      style: const TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    const Text(
                                      "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                )),
                            const SizedBox(
                              height: 15.0,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.0, right: 8.0),
                                  child: Text(
                                    "Son Haberler",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  width: 200,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            Column(
                                children: lastNews.map((Map news) {
                              return horizontalCard(news["isim"],
                                  news["fotograf"], news["aciklama"], context);
                            }).toList()),
                            const SizedBox(
                              height: 75,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])),
          bottomNavigationBar("home", context)
        ])));
  }
}

Widget buildheader(String title, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
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
        Text(
          title,
          // overflow: TextOverflow.fade,
          style: const TextStyle(
              fontSize: 25,
              color: Color(0xFF0A1034),
              fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            print("favoriye basıldı");
          },
          child: const Icon(
            Icons.favorite_border,
            size: 35,
            color: Colors.black,
          ),
        )
      ],
    ),
  );
}
