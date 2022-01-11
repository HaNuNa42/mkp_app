import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              const SizedBox(height: 50.0),
              Image.asset("assets/register.png"),
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
                        labelText: 'Ad',
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
                        labelText: 'Soyad',
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

              //giriş yap butonu
              Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 30, left: 30),
                  child: GestureDetector(
                    onTap: () {
                      //
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
                        "Üye Ol",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ]),
          ),
        ));
  }
}
