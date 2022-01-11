import 'package:flutter/material.dart';
import 'package:mkp_app/components/bottom_navigation_bar.dart';
import 'package:mkp_app/components/drawer.dart';

class AboutPage extends StatefulWidget {
  String title;

  AboutPage(this.title, {Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //header
                    buildheader(widget.title, context),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      "Uygulama Hakkında",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Bu uygulama Mustafakemalpaşa ilçesi için yazılmış haber uygulamasıdır. İlçede ve Türkiye'de yaşananları anlık haber olarak görebileceğiniz mobil uygulamadır.",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Geliştirici Hakkında",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Bu uygulama Modarc Soft tarafından yapılmıştır.",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      height: 300,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Copyright @ 2022",
                        style: TextStyle(color: Colors.grey),
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
      mainAxisAlignment: MainAxisAlignment.start,
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
        const SizedBox(
          width: 100,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 25,
              color: Color(0xFF0A1034),
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
