import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResColors {
  final Color accent = const Color.fromRGBO(0x37, 0x00, 0xB3, 1);
  final Color white = const Color.fromRGBO(0xFF, 0xFF, 0xFF, 1);
  final Color black = const Color.fromRGBO(0x00, 0x00, 0x00, 1);
  final Color red = const Color.fromRGBO(0xFF, 0x00, 0x00, 1);
  final Color green = const Color.fromRGBO(0x00, 0xFF, 0x00, 1);
  final Color blue = const Color.fromRGBO(0x00, 0x00, 0xFF, 1);
  final Color yellow = const Color.fromRGBO(0xFF, 0xFF, 0x00, 1);
  final Color cyan = const Color.fromRGBO(0x00, 0xFF, 0xFF, 1);
  final Color magenta = const Color.fromRGBO(0xFF, 0x00, 0xFF, 1);

  final int _variance = 0x10;
  static const Color _primaryLight = Color.fromRGBO(0x62, 0x00, 0xEE, 1);
  static const Color _primaryDark = Color.fromRGBO(0xBB, 0x86, 0xFC, 1);
  static const Color _onPrimaryLight = Color.fromRGBO(0xFF, 0xFF, 0xFF, 1);
  static const Color _onPrimaryDark = Color.fromRGBO(0x00, 0x00, 0x00, 1);
  static const Color _secondaryLight = Color.fromRGBO(0x03, 0xDA, 0xC6, 1);
  static const Color _secondaryDark = Color.fromRGBO(0x03, 0xDA, 0xC6, 1);
  static const Color _onSecondaryLight = Color.fromRGBO(0x00, 0x00, 0x00, 1);
  static const Color _onSecondaryDark = Color.fromRGBO(0x00, 0x00, 0x00, 1);
  static const Color _backLight = Color.fromRGBO(0xFF, 0xFF, 0xFF, 1);
  static const Color _backDark = Color.fromRGBO(0x12, 0x12, 0x12, 1);
  static const Color _onBackLight = Color.fromRGBO(0x00, 0x00, 0x00, 1);
  static const Color _onBackDark = Color.fromRGBO(0xFF, 0xFF, 0xFF, 1);
  static const Color _surfaceLight = Color.fromRGBO(0xFF, 0xFF, 0xFF, 1);
  static const Color _surfaceDark = Color.fromRGBO(0x12, 0x12, 0x12, 1);
  static const Color _onSurfaceLight = Color.fromRGBO(0x00, 0x00, 0x00, 1);
  static const Color _onSurfaceDark = Color.fromRGBO(0xFF, 0xFF, 0xFF, 1);
  static const Color _errorLight = Color.fromRGBO(0xB0, 0x00, 0x20, 1);
  static const Color _errorDark = Color.fromRGBO(0xCF, 0x66, 0x79, 1);
  static const Color _onErrorLight = Color.fromRGBO(0xFF, 0xFF, 0xFF, 1);
  static const Color _onErrorDark = Color.fromRGBO(0x00, 0x00, 0x00, 1);

  Brightness brightness({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? Brightness.light
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? Brightness.dark
              : Brightness.light
      : themeMode == ThemeMode.dark
          ? Brightness.dark
          : Brightness.light;
  Color darken(Color color) => Color.fromRGBO(
        color.red - _variance,
        color.green - _variance,
        color.blue - _variance,
        color.opacity,
      );
  Color brighten(Color color) => Color.fromRGBO(
        color.red + _variance,
        color.green + _variance,
        color.blue + _variance,
        color.opacity,
      );
  Color text({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _onBackLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _onBackDark
              : _onBackLight
      : themeMode == ThemeMode.dark
          ? _onBackDark
          : _onBackLight;
  Color back({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _backLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _backDark
              : _backLight
      : themeMode == ThemeMode.dark
          ? _backDark
          : _backLight;
  Color onBack({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _onBackLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _onBackDark
              : _onBackLight
      : themeMode == ThemeMode.dark
          ? _onBackDark
          : _onBackLight;
  Color primary({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _primaryLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _primaryDark
              : _primaryLight
      : themeMode == ThemeMode.dark
          ? _primaryDark
          : _primaryLight;
  Color onPrimary({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _onPrimaryLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _onPrimaryDark
              : _onPrimaryLight
      : themeMode == ThemeMode.dark
          ? _onPrimaryDark
          : _onPrimaryLight;
  Color secondary({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _secondaryLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _secondaryDark
              : _secondaryLight
      : themeMode == ThemeMode.dark
          ? _secondaryDark
          : _secondaryLight;
  Color onSecondary({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _onSecondaryLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _onSecondaryDark
              : _onSecondaryLight
      : themeMode == ThemeMode.dark
          ? _onSecondaryDark
          : _onSecondaryLight;
  Color surface({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _surfaceLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _surfaceDark
              : _surfaceLight
      : themeMode == ThemeMode.dark
          ? _surfaceDark
          : _surfaceLight;
  Color onSurface({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _onSurfaceLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _onSurfaceDark
              : _onSurfaceLight
      : themeMode == ThemeMode.dark
          ? _onSurfaceDark
          : _onSurfaceLight;
  Color error({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _errorLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _errorDark
              : _errorLight
      : themeMode == ThemeMode.dark
          ? _errorDark
          : _errorLight;
  Color onError({ThemeMode? themeMode}) => themeMode == null
      ? Get.context == null
          ? _onErrorLight
          : Theme.of(Get.context!).brightness == Brightness.dark
              ? _onErrorDark
              : _onErrorLight
      : themeMode == ThemeMode.dark
          ? _onErrorDark
          : _onErrorLight;
}
