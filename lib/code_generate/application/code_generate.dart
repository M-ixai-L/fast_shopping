import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CodeGeneratorScreen extends StatefulWidget {
  CodeGeneratorScreen({super.key, required this.data});

  @override
  State<StatefulWidget> createState() => CodeGeneratorScreenState();
  String data;
}

class CodeGeneratorScreenState extends State<CodeGeneratorScreen> {
  GlobalKey globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    Permission.storage.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5F4E9),
      appBar: AppBar(
        title: const Text('QR Code Generator'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: _captureAndSharePng,
          )
        ],
      ),
      body: _contentWidget(),
    );
  }

  Future<void> _captureAndSharePng() async {
    try {
      final RenderRepaintBoundary boundary = globalKey.currentContext!
          .findRenderObject()! as RenderRepaintBoundary;

      var image = await boundary.toImage();
      ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
      if (byteData != null) {
        Uint8List pngBytes = byteData.buffer.asUint8List();

        Directory appDocDirectory = await getApplicationDocumentsDirectory();

        Directory(appDocDirectory.path + '/' + 'dir')
            .create(recursive: true)
            .then((Directory directory) async {
          await File('${directory.path}/my_image.jpg').create();

          File('${directory.path}/my_image.jpg').writeAsBytes(pngBytes);
          await ImageGallerySaver.saveFile('${directory.path}/my_image.jpg');
        });
      }
    } catch (e) {
      print(e.toString());
    }
    context.pop();
  }

  _contentWidget() {
    final bodyHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).viewInsets.bottom;
    return Container(
      color: const Color(0xFFD5F4E9),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                children: [
                  RepaintBoundary(
                    key: globalKey,
                    child: Container(
                      color: Colors.white,
                      child: QrImage(
                        data: widget.data,
                        size: 0.5 * bodyHeight,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF4FFFC0),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                        _captureAndSharePng();
                      },
                      child: const Text('Save'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
