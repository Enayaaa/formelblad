import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:formelblad_app/data/formler.dart';
import 'globals.dart' as globals;
import 'package:formelblad_app/data/html_settings.dart';

class Utforska extends StatefulWidget {
  @override
  Utforska({Key key}) : super(key: key);

  // static String _createHtml(Map data) {
  //   String html = "";
  //   List formler = data["formler"];

  //   for (int i = 0; i < formler.length; i++) {
  //     html += formler[i]["kommentar"] != null ? formler[i]["kommentar"] : "";
  //     List formelLista =
  //         formler[i]["formler"] != null ? formler[i]["formler"] : [];
  //     if (formelLista.length != 0) {
  //       for (int j = 0; j < formelLista.length; j++) {
  //         html += formelLista[j].toString() != ""
  //             ? "\$\$" + formelLista[j].toString() + "\$\$"
  //             : "";
  //       }
  //     }
  //   }

  //   return html;
  // }

  @override
  _UtforskaState createState() => _UtforskaState();
}

class _UtforskaState extends State<Utforska> {
  List icons = [
    Icons.functions,
    Icons.toys,
    Icons.local_drink,
    Icons.table_chart
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: data.keys.length,
      separatorBuilder: (BuildContext context, int index) =>
          Divider(height: 2, thickness: 2),
      itemBuilder: (BuildContext context, int index) {
        String title = data.keys.elementAt(index);
        IconData icon = icons.elementAt(index);

        List<Widget> _getDelomraden(String amne, int omradeIndex) {
          List<Widget> list = [];

          List mydata = data[amne]["children"]["branches"][omradeIndex]
              ["children"]["subbranches"];
          int length = mydata.length != null ? mydata.length : 0;

          for (int i = 0; i < length; i++) {
            if (mydata[i]["title"] != "") {
              list.add(
                Divider(
                  height: 1,
                ),
              );
              list.add(
                Container(
                  color: globals.isDarkMode
                      ? Color(0xFF121212)
                      : Color(0xFFEFEFEF),
                  child: ListTile(
                    title: Text(mydata[i]["title"]),
                    // subtitle: mydata[i]["beskrivning"] != ""
                    //     ? Text(mydata[i]["beskrivning"])
                    //     : null,
                    trailing: Icon(
                      Icons.launch,
                      size: 20,
                      color: Colors.blueGrey,
                    ),
                    contentPadding: EdgeInsets.only(left: 25, right: 25),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            String _colorSettings = globals.isDarkMode
                                ? colorSettingsDark
                                : colorSetingsLight;
                            String _endHtml =
                                globals.isDarkMode ? endHtmlDark : endHtmlLight;
                            String _html = htmlStyle +
                                _colorSettings +
                                mydata[i]["html"] +
                                _endHtml;
                            return Scaffold(
                              appBar: AppBar(
                                title: Text(mydata[i]["title"]),
                              ),
                              body: TeXView(
                                teXHTML: _html,
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              );
            }
          }

          return list;
        }

        List<Widget> _getAmneChildren() {
          List<Widget> list = [];
          List mydata = data[title]["children"]["branches"] != null
              ? data[title]["children"]["branches"]
              : [];
          int _length = mydata.length != null ? mydata.length : 0;

          list.add(Divider(height: 1));

          for (int i = 0; i < _length; i++) {
            List<Widget> _delomraden = _getDelomraden(title, i);

            if (mydata[i]["title"] != "") {
              list.add(
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: ExpansionTile(
                    title: Text(
                      mydata[i]["title"],
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
