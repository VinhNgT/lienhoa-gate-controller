// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

extension ContextThemeX on BuildContext {
  Brightness get brightness => Theme.of(this).brightness;
  bool get isDarkMode => brightness == Brightness.dark;
  bool get isLightMode => brightness == Brightness.light;
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextStyle get defaultTextStyle => DefaultTextStyle.of(this).style;
  TextScaler get textScaler => MediaQuery.of(this).textScaler;
}

extension ContextSizeX on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get bottomBarHeight => MediaQuery.of(this).padding.bottom;
  double get appBarHeight => AppBarTheme.of(this).toolbarHeight ?? 0;
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
  EdgeInsets get systemGestureInsets => MediaQuery.of(this).systemGestureInsets;
}

extension ContextMethodsX on BuildContext {
  void removeFocus() {
    final FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void showSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
