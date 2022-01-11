import 'package:flutter/material.dart';
import 'package:mkp_app/screens/about.dart';
import 'package:mkp_app/screens/category.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  // final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  // final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0XFFECECEC),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            // onDetailsPressed: () {},
            decoration: BoxDecoration(
              color: Color(0xFFFF7373),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            accountName: Text('aa aa',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            accountEmail: Text("a@a.com"
                // '${widget.auth.currentUser.email}',
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  "Kategoriler",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 1,
                width: 200,
                color: Colors.black,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
                title: const Text(
                  'Son Dakika',
                  style: TextStyle(fontSize: 16.0),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CategoryPage("Son Dakika");
                  }));
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Gündem',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryPage("Gündem");
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Teknoloji',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryPage("Teknoloji");
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Ekonomi',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryPage("Ekonomi");
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Sağlık',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryPage("Sağlık");
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Magazin',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                //   _authService.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryPage("Magazin");
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Moda',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryPage("Moda");
                }));
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  "Uygulama",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 1,
                width: 200,
                color: Colors.black,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Hakkında',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutPage("Hakkında");
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Bize Ulaşın',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                //
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              title: const Text(
                'Çıkış Yap',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                //   _authService.signOut();
              },
            ),
          ),
        ],
      ),
    );
  }
}
