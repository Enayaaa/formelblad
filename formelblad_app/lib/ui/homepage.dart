import 'package:flutter/material.dart';
import 'package:formelblad_app/ui/bottomnavbarutforska.dart';
import 'package:formelblad_app/ui/globals.dart' as globals;
import 'package:formelblad_app/ui/styles.dart';

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
    _darktheme =
        isThemeDark() ?? false; // function isThemeDark is from styles.dart
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
            color: isThemeDark()
                ? StylesDark.drawerHeaderColor
                : StylesLight.drawerHeaderColor,
          ),
          child: Text(
            'Inställningar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: isThemeDark()
                  ? StylesDark.cardBGColor
                  : StylesLight.cardBGColor,
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
        ),
        SizedBox(height: 5),
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
              icon: Icon(Icons.bookmark), title: Text("Samlingar")),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.redAccent,
        onTap: _onBottomItemTapped,
      ),
    );
  }
}
