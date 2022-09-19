import 'package:am_box/utils/colors.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary:Colors.white,
    onPrimary: primaryColor,
    secondary: primaryColor,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.red,
    background: Colors.white,
    onBackground: Colors.white,
    surface: Colors.white,
    onSurface: Colors.blueGrey
  )
);