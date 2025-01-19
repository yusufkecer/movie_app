import 'package:flutter/material.dart';
import 'package:movie_app/core/theme/theme_constant.dart';
import 'package:movie_app/product/index.dart';

@immutable
final class CustomTheme {
  ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: ProductColor().darkOcean,
      appBarTheme: _appBarTheme,
      cardTheme: _cardTheme,
      brightness: Brightness.dark,
      textSelectionTheme: _textSelectionTheme,
      inputDecorationTheme: _inputDecorationTheme,
      colorScheme: ColorScheme.dark(
        primary: ProductColor().darkOcean,
        surface: ProductColor().darkOcean,
        surfaceBright: ProductColor().darkOcean,
      ),
    );
  }

  final TextSelectionThemeData _textSelectionTheme = TextSelectionThemeData(
    cursorColor: ProductColor().lightGrey,
    selectionColor: ProductColor().darkOcean,
    selectionHandleColor: ProductColor().darkOcean,
  );

  final AppBarTheme _appBarTheme = AppBarTheme(
    backgroundColor: ProductColor().transparent,
    centerTitle: true,
    elevation: ThemeConstants.elevationZero,
  );

  final CardTheme _cardTheme = CardTheme(
    elevation: ThemeConstants.elevation,
    color: ProductColor().lightOcean,
    clipBehavior: Clip.antiAlias,
  );

  final InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
    prefixIconColor: ProductColor().lightGrey,
    suffixIconColor: ProductColor().lightGrey,
    border: OutlineInputBorder(borderRadius: ProductRadius.ten()),
  );
}
