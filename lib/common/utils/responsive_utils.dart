import 'package:flutter/material.dart';

class ResponseUtils {
  static isLarge(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }
}
