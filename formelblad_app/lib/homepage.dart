import 'package:flutter/material.dart';

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

  // Methods for Drawer
  List<Widget> _kategorier = <Widget>[
    DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.redAccent,
      ),
      child: Text(
        'Sök bland kategorier',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    ),
    ListTile(
      title: Text("Matematik"),
      trailing: Icon(Icons.keyboard_arrow_up),
      onTap: () {},
    ),
    ListTile(
      title: Text("Fysik"),
      trailing: Icon(Icons.keyboard_arrow_up),
      onTap: () {},
    ),
    ListTile(
      title: Text("Kemi"),
      trailing: Icon(Icons.keyboard_arrow_up),
      onTap: () {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formelblad"),
      ),
      body: Center(child: _bottomNavOptions.elementAt(_selectedIndex)),
      drawer: Drawer(
        child: ListView(children: _kategorier),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.class_), title: Text("Samlingar")),
          BottomNavigationBarItem(
              icon: Icon(Icons.import_contacts), title: Text("Utforska"))
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onBottomItemTapped,
      ),
    );
  }
}

class Utforska extends StatefulWidget {
  @override
  _UtforskaState createState() => _UtforskaState();
}

class _UtforskaState extends State<Utforska> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("SecondPage"),
    );
  }
}

class Samlingar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Text("Hello home page")],
    );
  }
}
