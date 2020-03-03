import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:formelblad_app/data/formler.dart';

class Utforska extends StatefulWidget {
  @override
  _UtforskaState createState() => _UtforskaState();
}

class _UtforskaState extends State<Utforska> {
  /*
  static List<Formel> _formler = List<Formel>();

  Future<List<Formel>> fetchFormler(String amne, String kategori) async {
    var formler = List<Formel>();

    var formlerJson = data[amne]["formler"][kategori][0]["body"];
    for (var formelJson in formlerJson) {
      formler.add(Formel.fromJson(formelJson));
    }

    return formler;
  }

  @override
  void initState() {
    setState(() async {
      _formler = await fetchFormler("matematik", "Algebra");
      print(_formler);
    });
    super.initState();
  } */

  static String _createHtml() {
    String _html = "";
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

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TeXView(
      teXHTML: _html,
      renderingEngine: RenderingEngine.Katex,
    ));
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
