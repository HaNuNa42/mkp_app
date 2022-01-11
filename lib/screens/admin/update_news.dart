import 'package:flutter/material.dart';
import 'package:mkp_app/components/bottom_navigation_bar.dart';
import 'package:mkp_app/components/drawer.dart';
import 'package:mkp_app/components/header.dart';

class UpdateNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerPage(),
        backgroundColor: const Color(0xFFFDEBEB),
        body: SafeArea(
            child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),

              //header
              header("Haberi Güncelle", context),
              const SizedBox(
                height: 50,
              ),

              //resim ekleme yapılacak TODO

              //inputlar

              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Başlık',
                      ))),
              const SizedBox(
                height: 20.0,
              ),

              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                      minLines: 1,
                      maxLines: 100,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'İçerik',
                      ))),
              const SizedBox(
                height: 20.0,
              ),
              //ekle butonu
              Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 30, left: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.indigoAccent,
                      ),
                      child: const Text(
                        "Güncelle",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 75,
              ),
            ],
          ),
          bottomNavigationBar('home', context),
        ])));
  }
}
