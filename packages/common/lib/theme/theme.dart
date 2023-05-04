import 'package:flutter/material.dart';
part '_colors_theme.dart';
part '_theme_extensions.dart';

final lightTheme = ThemeData(
  fontFamily: 'NotoSansJP',
  extensions: [
    //   Dimensions(
    //     spaces: _spaceDimensions,
    //     insets: _insetsDimensions,
    //     borderWidths: _borderWidthDimensions,
    //     radii: _radiiDimensions,
    //   ),
    myColorsExtension,
  ],
  appBarTheme:
   AppBarTheme(backgroundColor: _colorScheme.background),
  // elevatedButtonTheme: _elevatedButton,
  // textButtonTheme: _textButton,
  // outlinedButtonTheme: _outlinedButton,
  // dividerTheme: _divider,
  scaffoldBackgroundColor: _colorScheme.background,
);
