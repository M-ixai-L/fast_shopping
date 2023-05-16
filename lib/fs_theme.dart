import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FSTheme {
  static const Color _facebookBlue = Color(0xff1877f2);
  static const Color _offWhite = Color(0xfff8f8f8);
  static const Color _darkBlue = Color(0xff151e20);
  static const Color _darkGrey = Color(0xff8d8c88);
  static const Color _grey = Color(0xffc6c4be);
  static const Color _lightGrey = Color(0xffebebeb);
  static const Color _red = Color(0xfffe4220);
  static const Color _primary = Color(0xff54D4A6);
  static const Color _secondary = Color(0xff4FFFC0);

  static const Color textColorPrimary = _darkBlue;
  static const Color textColorSecondary = _darkGrey;
  static const Color textColorTertiary = _grey;
  static const Color textColorLight = _lightGrey;

  static const double spacingXXLarge = 48.0;
  static const double spacingXLarge = 32.0;
  static const double spacingLarge = 20.0;
  static const double spacingDefault = 16.0;
  static const double spacingSmall = 8.0;
  static const double spacingXSmall = 4.0;

  static const double appBarIconSize = 22.0;
  static const double buttonHeight = 50.0;
  static const double buttonHeightSmall = 32.0;
  static const double dialogRadius = 10.0;
  static const double buttonRadius = 25.0;
  static const double fabSizeLarge = 80.0;
  static const double fabIconSizeLarge = 40.0;
  static const double coverRadius = 10.0;
  static const double defaultButtonIconSize = 30.0;

  static const double singlePageRatio = 152 / 206.7;
  static const double bookRatio = 1390 / 1003;

  /// Gets the flavor theme and adds the universal properties
  static ThemeData getMaterialTheme() {
    return ThemeData(
      primaryColor: _primary,
      dividerColor: _grey,
      hintColor: _lightGrey,
      disabledColor: _grey,
      textTheme: TextTheme(
          bodyMedium: GoogleFonts.anonymousPro()
              .copyWith(fontWeight: FontWeight.w500, fontSize: 12)),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
        ),
      ),
      colorScheme: const ColorScheme(
        background: _offWhite,
        brightness: Brightness.light,
        primary: _primary,
        onPrimary: _offWhite,
        secondary: _secondary,
        onSecondary: _offWhite,
        error: _red,
        onError: _offWhite,
        onBackground: _facebookBlue,
        surface: _facebookBlue,
        onSurface: _offWhite,
      ),
    );
  }
}
