import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF4f46e5);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
