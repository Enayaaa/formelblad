class Formel {
  String kommentar;
  List<String> formler;

  Formel({this.kommentar, this.formler});

  Formel.fromJson(Map<String, dynamic> json) {
    kommentar = json['kommentar'];
    formler = json['formler'];
  }
}