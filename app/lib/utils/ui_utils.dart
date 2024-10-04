import 'package:flutter/material.dart';

abstract class UiUtils {
  static List<BoxShadow> reverseBoxShadow(List<BoxShadow> shadows) {
    return shadows
        .map(
          (e) => BoxShadow(
            offset: -e.offset,
            blurRadius: e.blurRadius,
            spreadRadius: e.spreadRadius,
            color: e.color,
            blurStyle: e.blurStyle,
          ),
        )
        .toList();
  }
}
