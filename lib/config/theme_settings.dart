import 'package:flutter/material.dart';

Color primary = const Color.fromARGB(255, 230, 99, 7);
ThemeData themeSettingsLight(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: primary, primary: primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(45),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(45),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        side: BorderSide(
          color: Theme.of(context).colorScheme.primary,
        ),
        foregroundColor: Colors.black87,
      ),
    ),
  );
}

ThemeData themeSettingsDark(BuildContext context) {
  return ThemeData.dark(useMaterial3: true).copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: primary,
          ),
          minimumSize: const Size.fromHeight(45),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(45),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        side: BorderSide(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    ),
  );
}
