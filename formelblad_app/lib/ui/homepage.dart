import 'package:flutter/material.dart';
import 'package:formelblad_app/ui/bottomnavbarutforska.dart';
import 'installningar.dart';
import 'globals.dart' as globals;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Methods for bottomnavigation
  int _selectedIndex = 0;

  List<Widget> _bottomNavOptions = <Widget>[
    Utforska(),
    Samlingar(),
    Installningar()
  ];

  @override
  void initState() {
    super.initState();
    globals.isDarkMode = globals.prefs.getBool("darktheme") ?? false;
  }

  void _onBottomItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const bottomNavItems = const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.import_contacts),
        title: Text("Utforska"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.bookmark),
        title: Text("Samlingar"),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        title: Text("Inställningar"),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Formelblad"),
      ),
      body: _bottomNavOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: _selectedIndex,
        onTap: _onBottomItemTapped,
      ),
    );
  }
}
