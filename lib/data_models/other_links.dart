/*
"other-links": [
  {
      "title": "Clients",
      "site": "https://shlink.io/apps"
  }
],
*/

class OtherLinks {
  late List<OtherLink> links;

  OtherLinks({
    required this.links,
  });

  OtherLinks.fromList(List dynamicList) {
    links = [];

    if (dynamicList == []) {
      links.add(OtherLink());
    } else {
      for (var link in dynamicList) {
        links.add(OtherLink.fromJson(link));
      }
    }
  }
}

class OtherLink {
  String title;
  String site;

  OtherLink({
    this.title = "",
    this.site = "",
  });

  factory OtherLink.fromJson(Map<String, dynamic> json) {
    //print("OtherLink");

    return OtherLink(
      title: json["title"] as String,
      site: json["site"] as String,
    );
  }
}
