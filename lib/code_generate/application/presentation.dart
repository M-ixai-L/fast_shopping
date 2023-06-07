import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CodeGeneratorScreen extends StatefulWidget {
  const CodeGeneratorScreen({Key? key, this.data}) : super(key: key);

  final String? data;

  @override
  State<CodeGeneratorScreen> createState() => _CodeGeneratorScreenState();
}

class _CodeGeneratorScreenState extends State<CodeGeneratorScreen> {
  //final pdf = Document();
  //final _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: QrImage(
        data: widget.data ?? "some text",
        size: 300.0,
        version: 10,
        backgroundColor: Colors.white,
      ),
      // child: Screenshot(
      //     controller: _screenshotController, child: _buildQRImage('123456')),
    );
  }
  //
  // Widget _buildQRImage(String data) {
  //   return QrImage(
  //     data: data,
  //     size: 250.0,
  //     version: QrVersions.auto,
  //     errorCorrectionLevel: QrErrorCorrectLevel.H,
  //     gapless: false,
  //     foregroundColor: Colors.black,
  //     backgroundColor: Colors.white,
  //   );
  // }
}
