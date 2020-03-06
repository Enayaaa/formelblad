import 'package:flutter/material.dart';
import 'package:formelblad_app/bottomnavbarutforska.dart';
import 'package:formelblad_app/globals.dart' as globals;
import 'package:formelblad_app/styles.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Methods for bottomnavigation
  int _selectedIndex = 0;

  List<Widget> _bottomNavOptions = <Widget>[Utforska(), Samlingar()];

  void _onBottomItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Drawer
  bool _darktheme;

  @override
  void initState() {
    _darktheme = globals.prefs.getBool("darktheme") ?? false;
    super.initState();
  }

  void setSettings(String pref, bool value) async {
    globals.prefs.setBool(pref, value);
  }

  bool systemDarkOn() {
    return MediaQuery.of(context).platformBrightness.toString() ==
            Brightness.dark.toString()
        ? true
        : false;
  }

  Widget _drawer(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
          child: Text(
            'Inställningar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xFF222222),
          ),
          child: SwitchListTile(
            title: Text("Dark theme"),
            value: systemDarkOn() ? true : _darktheme,
            onChanged: systemDarkOn()
                ? null
                : (bool value) {
                    setState(() {
                      _darktheme = value;
                      globals.darkMode = _darktheme;
                      globals.prefs.setBool("darktheme", value);
                      themeBloc.changeTheme(value);
                    });
                  },
          ),
        ),
        SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Color(0xFF222222),
          ),
          child: SwitchListTile(
            title: Text("Dark theme"),
            value: systemDarkOn() ? true : _darktheme,
            onChanged: systemDarkOn()
                ? null
                : (bool value) {
                    setState(() {
                      _darktheme = value;
                      globals.darkMode = _darktheme;
                      globals.prefs.setBool("darktheme", value);
                      themeBloc.changeTheme(value);
                    });
                  },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formelblad"),
      ),
      body: Center(child: _bottomNavOptions.elementAt(_selectedIndex)),
      drawer: Drawer(
        child: _drawer(context),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.import_contacts), title: Text("Utforska")),
          BottomNavigationBarItem(
              icon: Icon(Icons.class_), title: Text("Samlingar")),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onBottomItemTapped,
      ),
    );
  }
}
