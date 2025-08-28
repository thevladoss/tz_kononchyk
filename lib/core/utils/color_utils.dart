import 'package:flutter/painting.dart';

Color colorFromString(String key) {
  int hash = 0;
  for (int i = 0; i < key.length; i++) {
    hash = (hash * 31 + key.codeUnitAt(i)) & 0xFFFFFF;
  }
  final r = (hash >> 16) & 0xFF;
  final g = (hash >> 8) & 0xFF;
  final b = hash & 0xFF;
  return Color.fromRGBO(r, g, b, 1);
}
