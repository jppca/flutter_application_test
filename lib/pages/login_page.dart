import 'package:flutter/material.dart';

//Custom Imports.
import 'package:flutter_application_test/widgets/widget_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: const Color.fromRGBO(21, 43, 80, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(60),
          ),
        ),
        title: const Text(
          "D4ALL",
          style: TextStyle(
            color: Colors.white,
            fontSize: 70,
          ),
        ),
      ),
      body: const Scrollbar(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                WForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
