import 'package:flutter/material.dart';
import 'package:formelblad_app/ui/homepage.dart';
import 'package:formelblad_app/ui/styles.dart';
import 'package:formelblad_app/ui/globals.dart' as globals;
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  globals.prefs = await SharedPreferences.getInstance();
  bool _useDark = globals.prefs.getBool("darktheme") ?? false;
  globals.prefs.getStringList("searchhistory") ??
      globals.prefs.setStringList("searchhistory", []);
  runApp(MyApp(useDark: _useDark));
}

class MyApp extends StatelessWidget {
  final bool useDark;

  MyApp({Key key, @required this.useDark}) : super(key: key);

  final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.light,
  );

  final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black, //backgroubd color
    canvasColor: Color(0xFF121212), //bottomnavbar
    accentColor: Colors.redAccent,
    buttonColor: Colors.redAccent,
  );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: themeBloc.darkThemeEnabled,
      initialData: useDark,
      builder: (context, snapshot) {
        return MaterialApp(
          title: 'Formelblad',
          theme: snapshot.data ? darkTheme : lightTheme,
          darkTheme: darkTheme,
          home: HomePage(),
        );
      },
    );
  }
}