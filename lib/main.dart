import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'D4ALL Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'D4ALL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var result = "-";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(50,75,111, 1),
        title: Text(widget.title,
        style: TextStyle(color: Colors.white),),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Center(
            widthFactor: 15,
            heightFactor: 10,
            child: Text(
              '$result',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
           ElevatedButton(
            onPressed: () async {
              var res = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleBarcodeScannerPage(
                      isShowFlashIcon: true,
                    ),
                  ));
              setState(() {
                if (res is String) {
                  if(res != '-1'){
                    result = res;
                  } else {
                    result = "No Result :)";
                  }
                }
              });
            },
            child: const Text('Open Scanner'),
          ),
        ],
      )),
    );
  }
}
