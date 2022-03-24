/*
links:{
  "redirect-to": "",
  "see-also": [],
  "related": []
}
*/

class Links {
  String redirectTo = "";
  List<String> seeAlso = [];
  List<String> related = [];

  Links({
    required this.redirectTo,
    required this.seeAlso,
    required this.related,
  });

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      redirectTo: json["redirect-to"] as String,
      seeAlso: json["see-also"].cast<String>() as List<String>,
      related: json["related"].cast<String>() as List<String>,
    );
  }
}
