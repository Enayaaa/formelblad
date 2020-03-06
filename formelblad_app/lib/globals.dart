library formelblad_app.globals;

import 'package:shared_preferences/shared_preferences.dart';

bool darkMode;
SharedPreferences prefs;

void refreshPrefs() async {
  prefs = await SharedPreferences.getInstance();
}
