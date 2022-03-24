/*
"0BSD":{
  "description": "BSD Zero-Clause Licence",
  "site": "https://opensource.org/licenses/0BSD"
},
*/

class License {
  String description;
  String site;

  License({
    required this.description,
    required this.site,
  });

  factory License.fromJson(Map<String, dynamic> json) {
    return License(
      description: json["description"],
      site: json["site"],
    );
  }
}
