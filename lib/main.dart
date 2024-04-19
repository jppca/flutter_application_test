import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Custom Imports
import 'package:flutter_application_test/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Fixed orientation in the app
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    //Navigation bar color in the app
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromRGBO(242, 242, 242, 1),
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      initialRoute: 'login',
      routes: appRoutes,
    );
  }
}
