/*
"DreamFactory":{
  "name": "DreamFactory",
  "website": "https://www.dreamfactory.com/",
  "description": "Turns any SQL/NoSQL/Structured data into Restful API.",
  "hosted_demo": false,
  "demo": "",
  "oss": true,
  "source": "https://github.com/dreamfactorysoftware/dreamfactory",
  "other-links": [
    {
      "title": "Clients",
      "site": "https://shlink.io/apps"
    }
  ],
  "license": "Apache-2.0"
},
*/
import 'otherLinks.dart';

class Items {
  List<Item> items;

  Items({
    required this.items,
  });

  factory Items.fromJson(Map<String, dynamic> json) {
    List<Item> tempItems = [];
    json.forEach((key, value) {
      var temp = Item.fromJson(value);
      tempItems.add(temp);
    });

    return Items(
      items: tempItems,
    );
  }
}

class Item {
  String name;
  String website;
  String description;
  bool hostedDemo = false;
  String demo;
  bool oss;
  String source;
  OtherLinks otherLinks;
  String license;

  Item({
    required this.name,
    required this.website,
    required this.description,
    required this.hostedDemo,
    required this.demo,
    required this.oss,
    required this.source,
    required this.otherLinks,
    required this.license,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json["name"],
      website: json["website"],
      description: json["description"],
      hostedDemo: json["hosted_demo"],
      demo: json["demo"],
      oss: json["oss"],
      source: json["source"],
      otherLinks: OtherLinks.fromList(json["other-links"]),
      license: json["license"],
    );
  }
}
