import 'package:flutter/material.dart';
import 'package:mkp_app/screens/forgot_password.dart';
import 'package:mkp_app/screens/home_page.dart';
import 'package:mkp_app/screens/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFDEBEB),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const Padding(
                padding: EdgeInsets.all(25.0),
              ),
              Image.asset("assets/login.png"),
              const SizedBox(height: 25.0),

              //başlık
              const Text(
                "Mustafakemalpaşa",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Haber Uygulaması",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),

              //inputlar
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-posta',
                      ))),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                  ),
                ),
              ),

              //şifremi unuttum
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ForgotPassword();
                  }));
                },
                child: const Text(
                  "Şifremi Unuttum",
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const RegisterPage();
                  }));
                },
                child: const Text(
                  "Üye Değil Misiniz? Üye Olun!",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ),
              //giriş yap butonu
              Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 30, left: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.indigoAccent,
                      ),
                      child: const Text(
                        "Giriş Yap",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 30, left: 30),
                child: Container(
                  width: 50,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),

              //Google ile giriş yap
              _googleSignInButton(),
            ]),
          ),
        ));
  }
}

Widget _googleSignInButton() {
  return Padding(
    padding: const EdgeInsets.only(right: 35, left: 35),
    child: Container(
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.redAccent,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Google ile Giriş Yap',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
