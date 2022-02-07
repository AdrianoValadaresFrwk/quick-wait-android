import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quick_wait_android/design_system/buttons/rounded_elevated_button.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#E4FDFF"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 180.0),
              child: Center(
                child: SizedBox(
                  width: 200, 
                  height: 150, 
                  child: Image.asset('assets/images/logo.png')
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20, bottom: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Nova senha:',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.blue, fontSize: 18, fontFamily: 'Quicksand'),
                    ),
                    TextField(
                      onChanged: (text) {},
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey, width: 0.2),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Confirmar nova senha:',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.blue, fontSize: 18, fontFamily: 'Quicksand'),
                  ),
                  TextField(
                    onChanged: (text) {},
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey, width: 0.2),
                        borderRadius: BorderRadius.circular(17),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(color: HexColor("#E4FDFF"), borderRadius: BorderRadius.circular(17)),
                child: RoundedElevatedButton(
                  title: "Enviar",
                  onPressed: () {
                    Modular.to.navigate("/home");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}