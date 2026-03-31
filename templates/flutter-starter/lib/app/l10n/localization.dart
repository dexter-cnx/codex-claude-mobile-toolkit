import 'dart:ui' show Locale;
import 'package:flutter/material.dart';

class AppLocalization {
  static const assetPath = 'assets/i18n/generated';
  static const fallbackLocale = Locale('en');
  static const supportedLocales = <Locale>[Locale('en'), Locale('th')];
}
