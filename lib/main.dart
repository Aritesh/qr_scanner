import 'package:flutter/material.dart';
import 'package:qr_code_scaner/presentation/view/qr_code_generator.dart';
import 'package:qr_code_scaner/presentation/view/qr_code_scanner.dart';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';

void main() => runApp(const MaterialApp(home: MyHome()));

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const QRViewExample(),
                ));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Text('qrView'),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QrGeneratorScreen(),
                ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text('qrGenetator'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
