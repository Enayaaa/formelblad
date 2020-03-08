import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:formelblad_app/data/formler.dart';
import 'package:formelblad_app/ui/styles.dart';
import 'globals.dart' as globals;

class Utforska extends StatefulWidget {
  @override
  Utforska({Key key}) : super(key: key);

  static String _createHtml() {
    String _html = "";
    _html += globals.isDarkMode
        ? r"""<style>
        body {
            background-color: black;
            color: white;
        }
    </style>"""
        : "";

    List myArray = data["matematik"]["formler"]["Algebra"][0]["body"];

    for (int i = 0; i < myArray.length; i++) {
      _html += myArray[i]["kommentar"];
      _html += "<br>";

      for (int j = 0; j < myArray[i]["formler"].length; j++) {
        _html += "\\(" + myArray[i]["formler"][j] + "\\)<br>";
      }
      _html += "<br>";
    }

    return _html;
  }

  @override
  _UtforskaState createState() => _UtforskaState();
}

class _UtforskaState extends State<Utforska> {
  String _html = Utforska._createHtml();

  @override
  Widget build(BuildContext context) {
    List icons = [Icons.functions, Icons.toys, Icons.local_drink];
    return ListView.separated(
      itemCount: data.keys.length,
      separatorBuilder: (BuildContext context, int index) =>
          Divider(height: 2, thickness: 2),
      itemBuilder: (BuildContext context, int index) {
        String title = data.keys.elementAt(index).toUpperCase();
        IconData icon = icons.elementAt(index);
        return ListTile(
          onTap: () {
            buildPush(context, title);
          },
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          trailing: Icon(Icons.keyboard_arrow_right),
          contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          leading: CircleAvatar(child: Icon(icon)),
        );
      },
    );
  }

  Future buildPush(BuildContext context, String title) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
          ),
          appBar: AppBar(),
        ),
      ),
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

/* ListView(
      children: <Widget>[
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Container(
            decoration: BoxDecoration(
              color: globals.isDarkMode
                  ? StylesDark.cardBGColor
                  : StylesLight.cardBGColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              title: Text("Matemaik"),
              leading: Icon(Icons.functions),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Container(
            decoration: BoxDecoration(
              color: globals.isDarkMode
                  ? StylesDark.cardBGColor
                  : StylesLight.cardBGColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              title: Text("Fysik"),
              leading: Icon(Icons.toys),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Container(
            decoration: BoxDecoration(
              color: globals.isDarkMode
                  ? StylesDark.cardBGColor
                  : StylesLight.cardBGColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              title: Text("Kemi"),
              leading: Icon(Icons.local_drink),
              trailing: Icon(Icons.arrow_right),
            ),
          ),
        ),
      ],
    ); */
