import 'package:flutter/material.dart';

class ShadowStyles {
  static BoxShadow shadow1({Color? color}) {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 2,
      blurRadius: 3,
      offset: const Offset(0, 3), // changes position of shadow
    );
  }
}
