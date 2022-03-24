import 'dart:convert';

import 'package:ash_expanded/data_models/software.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ASH Expanded'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String response = '''
  {   
    "name": "Archiving and Digital Preservation (DP)",
    "major-category": false,
    "links": {
        "redirect-to": "",
        "see-also": [],
        "related": [
            "Content Management Systems (CMS)"
        ]
    },
    "items": {
        "Access to Memory (AtoM)": {
            "name": "Access to Memory (AtoM)",
            "website": "https://www.accesstomemory.org/",
            "description": "Access to Memory (AtoM) - Web-based, open source application for standards-based archival description and access in a multilingual, multi-repository environment.",
            "hosted_demo": true,
            "demo": "https://demo.accesstomemory.org/",
            "oss": true,
            "source": "https://github.com/artefactual/atom",
            "other-links": [],
            "license": "AGPL-3.0-only"
        },
        "ArchiveBox": {
            "name": "ArchiveBox",
            "website": "https://archivebox.io/",
            "description": "Self-hosted wayback machine that creates HTML and screenshot archives of sites from your bookmarks, browsing history, RSS feeds, or other sources.",
            "hosted_demo": false,
            "demo": "",
            "oss": true,
            "source": "https://github.com/ArchiveBox/ArchiveBox",
            "other-links": [],
            "license": "MIT"
        },
        "Archivematica": {
            "name": "Archivematica",
            "website": "https://www.archivematica.org/",
            "description": "Mature digital preservation system designed to maintain standards-based, long-term access to collections of digital objects.",
            "hosted_demo": true,
            "demo": "https://sandbox.archivematica.org/administration/accounts/login/",
            "oss": true,
            "source": "https://github.com/artefactual/archivematica",
            "other-links": [],
            "license": "AGPL-3.0-only"
        },
        "ArchivesSpace": {
            "name": "ArchivesSpace",
            "website": "https://archivesspace.org/",
            "description": "Archives information management application for managing and providing Web access to archives, manuscripts and digital objects.",
            "hosted_demo": true,
            "demo": "https://archivesspace.org/application/demo/",
            "oss": true,
            "source": "https://github.com/archivesspace/archivesspace",
            "other-links": [],
            "license": "ECL-2.0"
        },
        "CKAN": {
            "name": "CKAN",
            "website": "https://ckan.org",
            "description": "CKAN is a tool for making open data websites.",
            "hosted_demo": false,
            "demo": "",
            "oss": true,
            "source": "https://github.com/ckan/ckan",
            "other-links": [],
            "license": "AGPL-3.0"
        },
        "Collective Access - Providence": {
            "name": "Collective Access - Providence",
            "website": "https://collectiveaccess.org/",
            "description": "Highly configurable Web-based framework for management, description, and discovery of digital and physical collections supporting a variety of metadata standards, data types, and media formats.",
            "hosted_demo": false,
            "demo": "",
            "oss": true,
            "source": "https://github.com/collectiveaccess/providence",
            "other-links": [],
            "license": "GPL-3.0-only"
        },
        "Horahora": {
            "name": "Horahora",
            "website": "https://github.com/horahoradev/horahora",
            "description": "Video hosting website and video archival manager for Niconico, Bilibili, and Youtube.",
            "hosted_demo": false,
            "demo": "",
            "oss": false,
            "source": "",
            "other-links": [],
            "license": "MIT"
        }
      }
    }
    ''';

  //List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    //final String response = await rootBundle.loadString('data/sample.json');
    final data = json.decode(response) as Map<String, dynamic>;
    var tempData = Software.fromJson(data);
    print(tempData);
  }

  @override
  Widget build(BuildContext context) {
    //print(_items);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: readJson,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
