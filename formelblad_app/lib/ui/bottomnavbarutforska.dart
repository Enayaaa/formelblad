import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:formelblad_app/data/formler.dart';
import 'package:formelblad_app/ui/styles.dart';

class Utforska extends StatefulWidget {
  @override
  _UtforskaState createState() => _UtforskaState();
}

class _UtforskaState extends State<Utforska> {
    static String _createHtml() {
    String _html = "";
    _html += isThemeDark()
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

  String _html = _createHtml();

  /* Container(
      child: TeXView(
        teXHTML: _html,
        renderingEngine: RenderingEngine.Katex,
      ),
    ); */

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Container(
            decoration: BoxDecoration(
              color: isThemeDark()
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
              color: isThemeDark()
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
              color: isThemeDark()
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
