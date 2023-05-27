import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobilya/themes/my_colors.dart';

class MyTheme {
  static const AppBarTheme appBarTheme = AppBarTheme();
  static const FlexScheme scheme = FlexScheme.indigo;
  static const bool useMaterial3 = true;
  static TextStyle textTheme = GoogleFonts.urbanist(fontWeight: FontWeight.w600);

  static ThemeData dark = FlexThemeData.dark(
    //scheme: scheme,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 13,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    colorScheme: MyColors.flexSchemeDark,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: textTheme.fontFamily,
  );

  static ThemeData light = FlexThemeData.light(
    scheme: scheme,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
    ),
    //colorScheme: MyColors.flexSchemeLight,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: textTheme.fontFamily,
  );
}