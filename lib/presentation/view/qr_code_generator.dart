/*
 * QR.Flutter
 * Copyright (c) 2019 the QR.Flutter authors.
 * See LICENSE for distribution and usage details.
 */

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

/// This is the screen that you'll see when the app starts
class QrGeneratorScreen extends StatefulWidget {
  @override
  State<QrGeneratorScreen> createState() => _QrGeneratorScreenState();
}

class _QrGeneratorScreenState extends State<QrGeneratorScreen> {
  TextEditingController qrGenratorText = TextEditingController(
      text: 'Hey this is a QR code. Change this value in bottom text field');

  @override
  Widget build(BuildContext context) {
    String message =
        // ignore: lines_longer_than_80_chars
        'Hey this is a QR code. Change this value in the main_screen.dart file.';

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Container(
                    width: 280,
                    child: QrImageView(
                      data: qrGenratorText.text,
                      version: QrVersions.auto,

                      // gradient: LinearGradient(
                      //   begin: Alignment.bottomLeft,
                      //   end: Alignment.topRight,
                      //   colors: [Color(0xff289f70), Color(0xff134b38)],
                      // ),
                      /*gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xffff0000),
                          Color(0xffffa500),
                          Color(0xffffff00),
                          Color(0xff008000),
                          Color(0xff0000ff),
                          Color(0xff4b0082),
                          Color(0xffee82ee),
                        ],
                      ),*/
                      eyeStyle: const QrEyeStyle(
                        eyeShape: QrEyeShape.square,
                        color: Color(0xff128760),
                      ),
                      dataModuleStyle: const QrDataModuleStyle(
                        dataModuleShape: QrDataModuleShape.square,
                        color: Color(0xff1a5441),
                      ),
                      embeddedImage: AssetImage(
                          'assets/images/4.0x/logo_yakka_transparent.png'),
                      embeddedImageStyle: QrEmbeddedImageStyle(
                        size: Size.square(40),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40)
                    .copyWith(bottom: 40),
                child: TextFormField(
                  controller: qrGenratorText,
                  onChanged: (value) {
                    setState(() {
                      qrGenratorText.text = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
