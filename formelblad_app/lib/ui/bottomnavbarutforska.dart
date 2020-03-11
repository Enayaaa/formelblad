import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:formelblad_app/data/formler.dart';
import 'globals.dart' as globals;
import 'package:formelblad_app/data/html_settings.dart';

class Utforska extends StatefulWidget {
  @override
  Utforska({Key key}) : super(key: key);

  static String _createHtml(Map data) {
    String html = "";
    List formler = data["formler"];

    for (int i = 0; i < formler.length; i++) {
      html += formler[i]["kommentar"] != null ? formler[i]["kommentar"] : "";
      List formelLista =
          formler[i]["formler"] != null ? formler[i]["formler"] : [];
      for (int j = 0; j < formelLista.length; j++) {
        html += "\$\$" + formelLista[j].toString() + "\$\$";
      }
      html += "<br>";
    }

    return html;
  }

  @override
  _UtforskaState createState() => _UtforskaState();
}

class _UtforskaState extends State<Utforska> {
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

        List<Widget> _getDelomraden(String amne, int omradeIndex) {
          List<Widget> list = [];

          List mydata = data[amne]["områden"][omradeIndex]["delområden"];
          int length = mydata.length != null ? mydata.length : 0;

          for (int i = 0; i < length; i++) {
            String _colorSettings =
                globals.isDarkMode ? colorSettingsDark : colorSetingsLight;
            String _endHtml = globals.isDarkMode ? endHtmlDark : endHtmlLight;
            String _html = htmlStyle +
                _colorSettings +
                Utforska._createHtml(mydata[i]) +
                _endHtml;

            if (mydata[i]["titel"] != "") {
              list.add(Divider(
                height: 1,
              ));
              list.add(
                Container(
                  color: globals.isDarkMode
                      ? Color(0xFF121212)
                      : Color(0xFFEFEFEF),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Scaffold(
                              appBar: AppBar(
                                title: Text(mydata[i]["titel"]),
                              ),
                              body: TeXView(
                                teXHTML: _html,
                              ),
                            );
                          },
                        ),
                      );
                    },
                    title: Text(mydata[i]["titel"]),
                    subtitle: mydata[i]["beskrivning"] != ""
                        ? Text(mydata[i]["beskrivning"])
                        : null,
                    trailing: Icon(Icons.launch),
                    contentPadding: EdgeInsets.only(left: 25, right: 15),
                  ),
                ),
              );
            }
          }

          return list;
        }

        List<Widget> _getAmneChildren() {
          List<Widget> list = [];
          List mydata = data[title.toLowerCase()]["områden"] != null
              ? data[title.toLowerCase()]["områden"]
              : [];
          int _length = mydata.length != null ? mydata.length : 0;

          list.add(Divider(height: 1));

          for (int i = 0; i < _length; i++) {
            List<Widget> _delomraden = _getDelomraden(title.toLowerCase(), i);

            if (mydata[i]["titel"] != "") {
              list.add(
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: ExpansionTile(
                    title: Text(
                      mydata[i]["titel"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    children: _delomraden,
                  ),
                ),
              );
              list.add(Divider(height: 1));
            }
          }
          return list;
        }

        List<Widget> _amneChildren = _getAmneChildren();

        return ExpansionTile(
          title: Text(title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              icon,
              color: globals.isDarkMode ? Colors.black : Colors.white,
            ),
          ),
          children: _amneChildren,
        );
      },
    );
  }
}

class Samlingar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Bokmärken kommer snart",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
