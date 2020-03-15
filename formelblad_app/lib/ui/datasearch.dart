import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:formelblad_app/data/formler.dart';
import 'package:formelblad_app/data/html_settings.dart';
import 'package:formelblad_app/ui/styles.dart';
import 'globals.dart' as globals;

class DataSearch extends SearchDelegate<String> {
  static Map _getListOfSubbranches(Map data) {
    Map map = {};

    for (int i = 0; i < data.keys.length; i++) {
      var subject = data.keys.elementAt(i);
      for (int j = 0; j < data[subject]["children"]["branches"].length; j++) {
        for (int b = 0;
            b <
                data[subject]["children"]["branches"][j]["children"]
                        ["subbranches"]
                    .length;
            b++) {
          map[data[subject]["children"]["branches"][j]["children"]
                  ["subbranches"][b]["title"]] =
              data[subject]["children"]["branches"][j]["children"]
                  ["subbranches"][b]["html"];
        }
      }
    }

    return map;
  }

  var map = _getListOfSubbranches(data);

  List placeholder = globals.prefs.getStringList("searchhistory").toList();

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
        primaryColor:
            globals.isDarkMode ? theme.primaryColor : Color(0xFFF1F1F1),
        primaryIconTheme: globals.isDarkMode
            ? theme.primaryIconTheme
            : IconThemeData(color: Colors.black),
        primaryColorBrightness: theme.primaryColorBrightness,
        primaryTextTheme: theme.primaryTextTheme);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show some result based on selection
    var a = map.keys
        .toList()
        .where((p) => p.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (query.isEmpty) {
      return Container();
    } else {
      return ListView.builder(
        itemCount: a.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.assessment),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text(a[index]),
          onTap: () {
            _addToSearchHistory(a[index]);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  String _colorSettings = globals.isDarkMode
                      ? colorSettingsDark
                      : colorSetingsLight;
                  String _endHtml =
                      globals.isDarkMode ? endHtmlDark : endHtmlLight;
                  String _html =
                      htmlStyle + _colorSettings + map[a[index]] + _endHtml;
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(a[index]),
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
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final List suggestionList = query.isEmpty
        ? placeholder
        : map.keys
            .toList()
            .where((p) => p.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return Container(
      margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
      decoration: BoxDecoration(
        color: globals.isDarkMode
            ? StylesDark.cardBGColor
            : StylesLight.cardBGColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          if (suggestionList[index]
                  .toLowerCase()
                  .indexOf(query.toLowerCase()) ==
              0) {
            return Container(
              margin: EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: Icon(Icons.assessment),
                trailing: Icon(Icons.launch),
                title: RichText(
                  text: TextSpan(
                    text: suggestionList[index].substring(0, query.length),
                    style: TextStyle(
                      color: globals.isDarkMode ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  _addToSearchHistory(suggestionList[index]);
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
                            map[suggestionList[index]] +
                            _endHtml;
                        return Scaffold(
                          appBar: AppBar(
                            title: Text(suggestionList[index]),
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
            );
          } else {
            return Container(
              margin: EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: Icon(Icons.assessment),
                trailing: Icon(Icons.launch),
                title: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color:
                            globals.isDarkMode ? Colors.white : Colors.black),
                    text: suggestionList[index].substring(
                        0,
                        suggestionList[index]
                            .toLowerCase()
                            .indexOf(query.toLowerCase())),
                    children: [
                      TextSpan(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        text: suggestionList[index].substring(
                            suggestionList[index]
                                .toLowerCase()
                                .indexOf(query.toLowerCase()),
                            suggestionList[index]
                                    .toLowerCase()
                                    .indexOf(query.toLowerCase()) +
                                query.length),
                        children: [
                          TextSpan(
                              style: TextStyle(fontWeight: FontWeight.normal),
                              text: suggestionList[index].substring(
                                  suggestionList[index]
                                          .toLowerCase()
                                          .indexOf(query.toLowerCase()) +
                                      query.length))
                        ],
                      )
                    ],
                  ),
                ),
                onTap: () {
                  _addToSearchHistory(suggestionList[index]);
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
                            map[suggestionList[index]] +
                            _endHtml;
                        return Scaffold(
                          appBar: AppBar(
                            title: Text(suggestionList[index]),
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
            );
          }
        },
      ),
    );
  }

  Future<bool> _addToSearchHistory(String entry) async {
    List<String> searchHistory =
        globals.prefs.getStringList("searchhistory").toList();

    if (searchHistory.elementAt(0) != entry) {
      searchHistory.insert(0, entry);
    }

    return await globals.prefs.setStringList("searchhistory", searchHistory);
  }
}
