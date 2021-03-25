import 'package:flutter/material.dart';

final ThemeData basicTheme = _buildBasicTheme();

ThemeData _buildBasicTheme() {
  const Color primaryColor = Colors.orange;
  const Color secondaryColor = Colors.lightGreen;
  final ColorScheme colorScheme = const ColorScheme.light().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  );
  final ThemeData base = ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: secondaryColor,
    buttonColor: primaryColor,
    indicatorColor: Colors.white,
    toggleableActiveColor: primaryColor,
    accentColor: secondaryColor,
    errorColor: Colors.red,
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
  )
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline6: base.headline6.copyWith(
      fontFamily: 'Montserrat',
    )
  )
}