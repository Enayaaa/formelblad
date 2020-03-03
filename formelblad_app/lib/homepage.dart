import 'package:flutter/material.dart';
import 'package:formelblad_app/bottomnavbarutforska.dart';

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
    ExpansionTile(
      title: Text(
        "Matematik",
        style: TextStyle(fontSize: 18),
      ),
      children: <Widget>[
        ListTile(
          title: Text("Matematik 1"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          title: Text("Matematik 2"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
      ],
    ),
    ExpansionTile(
      title: Text(
        "Fysik",
        style: TextStyle(fontSize: 18),
      ),
      children: <Widget>[
        ListTile(
          title: Text("Fysik 1"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          title: Text("Fysik 2"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
      ],
    ),
    ExpansionTile(
      title: Text(
        "Kemi",
        style: TextStyle(fontSize: 18),
      ),
      children: <Widget>[
        ListTile(
          title: Text("Kemi 1"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        ListTile(
          title: Text("Kemi 2"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
      ],
    )
  ];

/*
  List<Formel> _formler = List<Formel>();

  List<Formel> fetchFormler(String amne, String kategori) {
    var formler = List<Formel>();

    var formlerJson = data[amne]["formler"][kategori][0]["body"];
    for (var formelJson in formlerJson) {
      formler.add(Formel.fromJson(formelJson));
    }

    return formler;
  }

  @override
  void initState() {
    setState(() {
      _formler = fetchFormler("matematik", "Algebra");
      print(_formler);
    });
    super.initState();
  }
*/

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
