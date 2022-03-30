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
  List? items;

  MajorSoftwareCategory({
    required this.name,
    required this.majorCategory,
    required this.links,
    required this.items,
  });

  factory MajorSoftwareCategory.fromJson(Map<String, dynamic> json) {
    //print("MajorSoftwareCategory");
    var jsonCopy = json;
    List tempList = [];

    jsonCopy["items"].forEach((key, value) {
      if (json["major-category"]) {
        tempList.add(MajorSoftwareCategory.fromJson(value));
      } else {
        tempList.add(Software.fromJson(json));
      }
    });

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
    //print("Software");

    return Software(
      name: json["name"] as String,
      majorCategory: json["major-category"] as bool,
      links: Links.fromJson(json["links"]),
      items: Items.fromJson(json["items"]),
    );
  }
}
