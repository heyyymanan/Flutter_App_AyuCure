import 'package:flutter/material.dart';

extension MediaQueryExtensions on BuildContext {
  double percentWidth(double percent) {
    return MediaQuery.of(this).size.width * percent / 100;
  }

  double percentHeight(double percent) {
    return MediaQuery.of(this).size.height * percent / 100;
  }
}
