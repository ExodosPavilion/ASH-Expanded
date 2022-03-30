import 'dart:convert';

import 'package:ash_expanded/data_models/software.dart';
import 'package:ash_expanded/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ash_expanded/constants/strings.dart' as string_constants;
import 'package:ash_expanded/constants/colors.dart' as color_constants;
import 'package:ash_expanded/constants/name_to_file.dart' as name_convert;
import 'package:ash_expanded/constants/number_values.dart' as number_constants;

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
      home: const MyHomePage(title: string_constants.shortTitle),
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
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/main.json');
    Map<String, dynamic> data = await jsonDecode(response);
    var tempList = [];
    data.forEach((key, value) {
      Object listItem;

      if (value["major-category"]) {
        listItem = MajorSoftwareCategory.fromJson(value);
      } else {
        listItem = Software.fromJson(value);
      }

      tempList.add(listItem);
    });

    setState(() {
      _items = tempList;
    });
  }

  List<Widget> createCategoryCards() {
    List<Widget> returnList = [];

    if (_items != []) {
      for (var item in _items) {
        //image location as defined in pubspec
        String imagePath = "assets/images/category_images/colored/";

        //take name with spaces and capital letters and convert it
        //Initially this was to try and get the image name and item name to match
        //but that failed since converting this: "something - something or another"
        //resulted in this: "something---something-or-another"
        //which is not right since the image names were set with "something-something-or-another" in mind
        String imageName = item.name.replaceAll(' ', '-').toLowerCase();

        //So the solution was to get the converted name and try to find its match
        //in a map constant ... I am aware that I don't need to do the name conversion
        //anymore, but i was too lazy to change that and I figured it would be
        //easier to search if there were no spaces in the name
        String? fileName = name_convert.files[imageName];

        //I still don't have all the category images (some of them are too far out there)
        //as such I have decided on a warning image that would be displayed when there's no match
        //(the name matching returns a null if it doesn't find a match in the map constant)
        //I have a feeling that it might become useful when we start doing the item pages
        if (fileName != null) {
          imagePath = imagePath + fileName;
        } else {
          imagePath = imagePath + name_convert.files["warning"]!;
        }

        returnList.add(
          CategoryCard(
            title: item.name,
            fontColor: color_constants.lightModeFontColor,
            bgColor: color_constants.lightColor,
            imagePath: imagePath,
            imageOverlayColor: color_constants.imageLightColor,
          ),
        );
      }
    }

    return returnList;
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> gridList = createCategoryCards();

    return (_items != [])
        ? Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: GridView.count(
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              crossAxisCount: 4,
              //needed to define this since gridview didn't
              //provide enough space for my sizedbox dimensions in CategoryCard
              childAspectRatio: number_constants.categoryCardRatio,
              children: gridList,
            ),
          )
        : const CircularProgressIndicator();
  }
}
