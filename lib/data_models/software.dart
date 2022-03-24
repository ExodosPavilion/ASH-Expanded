/*
"Software Development - API Management": {
  "name": "",
  "major-category": false,
  "links": {},
  "items": {}
}
*/

import 'links.dart';
import 'item.dart';

class MajorSoftwareCategory {
  String name = "";
  bool majorCategory = false;
  Links? links;
  List<Software>? items;

  MajorSoftwareCategory({
    required this.name,
    required this.majorCategory,
    required this.links,
    required this.items,
  });

  factory MajorSoftwareCategory.fromJson(Map<String, dynamic> json) {
    var jsonCopy = json;

    List<Software> tempList = [];
    jsonCopy["items"]
        .forEach((key, value) => (tempList.add(Software.fromJson(value))));

    return MajorSoftwareCategory(
      name: json["name"] as String,
      majorCategory: json["major-category"] as bool,
      links: Links.fromJson(json["links"]),
      items: tempList,
    );
  }
}

class Software {
  String name = "";
  bool majorCategory = false;
  Links? links;
  Items? items;

  Software({
    required this.name,
    required this.majorCategory,
    required this.links,
    required this.items,
  });

  factory Software.fromJson(Map<String, dynamic> json) {
    return Software(
      name: json["name"] as String,
      majorCategory: json["major-category"] as bool,
      links: Links.fromJson(json["links"]),
      items: Items.fromJson(json["items"]),
    );
  }
}
