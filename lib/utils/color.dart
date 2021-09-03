import 'package:flutter/material.dart';

Color kColor(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  if (hexColor.length == 8) {
    return Color(
      int.parse("0x$hexColor"),
    );
  } else
    return Color(
      int.parse("0x$hexColor"),
    );
}
