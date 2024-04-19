import 'package:flutter/material.dart';

//custom Imports
import 'package:flutter_application_test/widgets/widget_custom_input.dart';
import 'package:flutter_application_test/widgets/widget_title.dart';

class WForm extends StatefulWidget {
  const WForm({Key? key}) : super(key: key);

  @override
  _WFormState createState() => _WFormState();
}

class _WFormState extends State<WForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: <Widget>[
        const Wtitle(title: 'INICIAR SESIÓN'),
        WCustonInput(
            icon: Icons.person,
            placeholder: "Username",
            keybordtype: TextInputType.emailAddress),
        WCustonInput(
          icon: Icons.lock,
          placeholder: "Password",
          keybordtype: TextInputType.visiblePassword,
          ispassword: true,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(21, 43, 80, 1)),
              child: const SizedBox(
                width: 100,
                height: 60,
                child: Center(
                  child: Text(
                    "Iniciar",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1), fontSize: 17),
                  ),
                ),
              ),
              onPressed: () async {
                Navigator.pushReplacementNamed(context, 'scanner');
              },
            ),
          ),
        ),
      ]),
    );
  }
}
