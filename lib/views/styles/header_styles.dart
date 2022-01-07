import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderStyles {
  static TextStyle header1({Color? color}) {
    return TextStyle(
        color: color ?? const Color(0xff5c6360),
        fontSize: 28,
        fontWeight: FontWeight.bold);
  }

  static TextStyle header2({Color? color}) {
    return TextStyle(
        color: color ?? const Color(0xff5c6360),
        fontSize: 24,
        fontWeight: FontWeight.bold);
  }

  static TextStyle header3({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        color: color ?? const Color(0xff5c6360),
        fontSize: 20,
        fontWeight: fontWeight ?? FontWeight.bold);
  }

  static TextStyle header4({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
        color: color ?? const Color(0xff5c6360),
        fontSize: 18,
        fontWeight: fontWeight ?? FontWeight.bold);
  }
}
