import 'package:flutter/material.dart';
import 'package:mkp_app/components/bottom_navigation_bar.dart';
import 'package:mkp_app/components/drawer.dart';
import 'package:mkp_app/components/header.dart';
import 'package:mkp_app/screens/admin/add_news.dart';
import 'package:mkp_app/screens/admin/update_news.dart';
import 'package:mkp_app/screens/delete_account.dart';
import 'package:mkp_app/screens/admin/delete_news.dart';
import 'package:mkp_app/screens/forgot_password.dart';

class ProfilePage extends StatelessWidget {
  late String title;

  ProfilePage(this.title, {Key? key}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  //header
                  header(title, context),
                  const SizedBox(
                    height: 32,
                  ),
                  //profil foto
                  Image.asset("assets/profile.png"),
                  const SizedBox(height: 20),
                  const Text(
                    "İsim Soyisim",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text("a@a.com", style: TextStyle(fontSize: 18.0)),
                  const SizedBox(height: 40),

                  //kullanıcı işlemleri
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "Kullanıcı İşlemleri",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 220,
                        color: Colors.black,
                      )
                    ],
                  ),
                  const SizedBox(height: 30),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ForgotPassword();
                          }));
                        },
                        child: const Text(
                          "Şifremi Değiştir",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const DeleteAccount();
                            }));
                          },
                          child: const Text(
                            "Üyeliğimi Sil",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 50,
                  ),

                  //admin işlemleri
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          "Admin İşlemleri",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 235,
                        color: Colors.black,
                      )
                    ],
                  ),
                  const SizedBox(height: 30),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AddNews();
                          }));
                        },
                        child: const Text(
                          "Haber Ekle",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return UpdateNews();
                          }));
                        },
                        child: const Text(
                          "Haber Güncelle",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DeleteNews("Haber Sil");
                          }));
                        },
                        child: const Text(
                          "Haber Sil",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          bottomNavigationBar('profile', context),
        ])));
  }
}
