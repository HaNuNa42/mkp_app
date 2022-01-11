import 'package:flutter/material.dart';
import 'package:mkp_app/components/header.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({Key? key}) : super(key: key);

  @override
  _DeleteAccountState createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFDEBEB),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            header("Üyeliğimi Sil", context),
            const SizedBox(
              height: 300,
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

            //giriş yap butonu
            Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 30, left: 30),
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
                      "Üyeliğimi Sil",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
          ]),
        ));
  }
}
