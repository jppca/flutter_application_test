import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});
  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  var result = "-";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(21, 43, 80, 1),
        title: const Text(
          "D4ALL",
          style: TextStyle(color: Colors.white),
        ),
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
                  if (res != '-1') {
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
