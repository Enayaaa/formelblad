library formelblad_app.globals;

import 'package:shared_preferences/shared_preferences.dart';

bool isDarkMode;
SharedPreferences prefs;

void refreshPrefs() async {
  prefs = await SharedPreferences.getInstance();
}