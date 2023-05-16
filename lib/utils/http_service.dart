import 'dart:io';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@injectable
class HttpService {
  Future<String?> makeGetRequest({required String name}) async {
    Response response = await get(Uri.parse(_localhost() + name));
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  Future<String?> makeSetRequest({required String name}) async {
    Response response = await post(Uri.parse(_localhost() + name));
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static String _localhost() {
    if (Platform.isAndroid) {
      return 'http://10.0.2.2:4004';
    } else {
      return 'http://localhost:4004';
    }
  }
}
