import 'package:flutter/material.dart';

//Custom Imports.
import 'package:flutter_application_test/pages/login_page.dart';
import 'package:flutter_application_test/pages/scanner_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'login': (_) => const LoginPage(),
  'scanner': (_) => const ScannerPage(),
};
