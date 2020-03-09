import 'package:flutter/material.dart';
import 'package:formelblad_app/ui/styles.dart';
import 'globals.dart' as globals;

class Installningar extends StatefulWidget {
  @override
  _InstallningarState createState() => _InstallningarState();
}

class _InstallningarState extends State<Installningar> {
  // Drawer
  bool _darktheme;

  @override
  void initState() {
    super.initState();
    _darktheme = globals.prefs.getBool("darktheme") ?? false;
    globals.isDarkMode = _darktheme;
  }

  bool systemDarkOn() {
    return MediaQuery.of(context).platformBrightness.toString() ==
            Brightness.dark.toString()
        ? true
        : false;
  }

  Widget _settings(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5, top: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: globals.isDarkMode
                  ? StylesDark.cardBGColor
                  : StylesLight.cardBGColor,
            ),
            child: SwitchListTile(
              title: Text("Dark theme"),
              value: systemDarkOn() ? true : _darktheme,
              onChanged: systemDarkOn()
                  ? null
                  : (bool value) => setState(() {
                        _darktheme = value;
                        globals.isDarkMode = _darktheme;
                        globals.prefs.setBool("darktheme", value);
                        themeBloc.changeTheme(value);
                      }),
            ),
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: _settings(context));
  }
}
