import 'dart:async';
import 'package:flutter/material.dart';
import 'package:formelblad_app/ui/globals.dart' as globals;

class DarkBloc {
  final _themeController = StreamController<
      bool>(); //ignore this error, since the sink needs to stay open . we ll, always. until the app closes.
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

final themeBloc = DarkBloc();

bool isThemeDark() => globals.prefs.getBool("darktheme");

class StylesLight {
  static Color cardBGColor = Color(0xFFF1F1F1);
  static Color drawerHeaderColor = Colors.redAccent;
}

class StylesDark {
  static Color cardBGColor = Color(0xFF222222);
  static Color drawerHeaderColor = Color(0xFF222222);
}
