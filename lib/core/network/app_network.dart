import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AppNetWork {
  String jsonLocation = "assets/jsons";

  static get(String loc) async {
    try {
      final String response = await rootBundle.loadString('assets/jsons/$loc');
      return response;
    } catch (e) {
      debugPrint(e.toString());
      throw "$e";
    }
  }
}
