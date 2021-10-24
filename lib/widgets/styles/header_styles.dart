import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderStyles {
  static TextStyle header1({Color? color}) {
    return TextStyle(
        color: color ?? const Color(0xff5c6360),
        fontSize: 28,
        fontWeight: FontWeight.bold);
  }
}
